from flask import Blueprint
from flask import render_template, request, redirect, url_for, jsonify, make_response
from user.models import Users, Answers, Questions, Tests, Instructions
from application import db
import datetime

user_app = Blueprint('user_app', __name__)

@user_app.route('/test', methods=['POST', 'GET'])
def test():
    session = db.session()
    consents = session.query(Questions).filter(Questions.test_name == str(1))
    
    instructions_maslach = session.query(Instructions).filter(Instructions.test_name == str(2))
    questions_maslach = session.query(Questions).filter(Questions.test_name == str(2))

    # A function to extract the content of the question/consent
    def get_question(questions): 
        quest = []
        for i in questions:
            q = str(i).split('%')
            quest.append(q[1])
        return quest
    
    questions_maslach = get_question(questions_maslach)
    consents = get_question(consents)

    instructions_pil = session.query(Instructions).filter(Instructions.test_name == str(3))
    questions_pil = session.query(Questions).filter(Questions.test_name == str(3))
    questions_pil = get_question(questions_pil)


    # Below I make a touple since Pil scale has two questions per row.
    questions = iter(questions_pil)
    questions_pil = list(zip(questions, questions)) 

    instructions_mri = session.query(Instructions).filter(Instructions.test_name == str(4))
    questions_mri = session.query(Questions).filter(Questions.test_name == str(4))
    questions_mri = get_question(questions_mri)


    for i in consents:
        consent = str(i)
    
    consent = consent.split("<br>") # To make the breaks visible. 

    return render_template('index.html', consent=consent, 
                                            instructions_maslach=instructions_maslach, 
                                            questions_maslach=questions_maslach,
                                            instructions_pil=instructions_pil,
                                            questions_pil=questions_pil,
                                            instructions_mri=instructions_mri,
                                            questions_mri=questions_mri)


@user_app.route('/test/submit', methods=['POST'])
def submit():
    data_post = request.get_json()
    sex = data_post['demographics']['sex']
    age = data_post['demographics']['age']
    marital_status = data_post['demographics']['maritalstatus']
    specialization = data_post['demographics']['specialization']
    speciality = data_post['demographics']['speciality']
    yearPractice = data_post['demographics']['yearPractice']
    workPlace = data_post['demographics']['workPlace']
    holidays = data_post['demographics']['holidays']
    workHours = data_post['demographics']['workHours']
    nightShifts = data_post['demographics']['nightShifts']
    offHours = data_post['demographics']['offHours']
    childern = data_post['demographics']['children']
    advancedPatients = data_post['demographics']['advancedPatients']
    psychoSocial = data_post['demographics']['psychoSocial']
    skillsTraining = data_post['demographics']['skillsTraining']

    # Since JS outputs ISOString I need to change it to py DateTime object for SQLAlchemy.
    created_at = data_post['date']['created_at'] 
    created_at = datetime.datetime.strptime(created_at, "%Y-%m-%dT%H:%M:%S.%fZ") # Note that the time is in UCT.


    new_user = Users(age=age, 
                    sex=sex, 
                    marital_status=marital_status, 
                    specialization=specialization,
                    speciality = speciality,
                    yearPractice = yearPractice,
                    workPlace = workPlace,
                    holidays = holidays,
                    workHours = workHours,
                    nightShifts = nightShifts,
                    offHours = offHours,
                    childern = childern,
                    advancedPatients = advancedPatients,
                    psychoSocial = psychoSocial,
                    skillsTraining = skillsTraining,
                    created_at=created_at)
    
    
    session = db.session()
    
    session.add(new_user)
    session.flush()
        
    user_id = new_user.id # this is needed for the submission of test answers: Not very optimal I know. 
    session.commit()
    
    #### This is a very bad code that get's the job done. 

    questions_maslach = session.query(Questions).filter(Questions.test_name == str(2))
    questions_pil = session.query(Questions).filter(Questions.test_name == str(3))
    questions_mri = session.query(Questions).filter(Questions.test_name == str(4))

    def get_id(question_query):
        question_id = []
        for i in question_query:
            q = str(i).split('%')
            question_id.append(q[0])
        return question_id
    
    q_id_maslach = get_id(questions_maslach)
    q_id_pil = get_id(questions_pil)
    q_id_mri = get_id(questions_mri)
    
    def submit_answers(test_name, question_id):
        submitted_at = datetime.datetime.utcnow()
        for i,y in zip(data_post[test_name], question_id):
            answers = Answers(user_id=user_id, question_id = int(y),
                                answer=data_post[test_name][i], submitted_at=submitted_at)
            session.add(answers)
            session.commit()

    submit_answers('maslach', q_id_maslach)
    submit_answers('pil', q_id_pil)
    submit_answers('mri', q_id_mri)

    res = make_response(jsonify({'message':"JSON received"}), 200)
    return res