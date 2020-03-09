from application import db
from sqlalchemy import Column, Integer, DateTime
import datetime

class Users(db.Model):
    id = db.Column(db.Integer, primary_key = True)
    age = db.Column(db.Integer, nullable=False)
    sex = db.Column(db.Integer, nullable=False)
    marital_status = db.Column(db.Integer, nullable=False)
    specialization = db.Column(db.Integer, nullable=False)
    speciality = db.Column(db.Integer, nullable=False)
    yearPractice = db.Column(db.Integer, nullable=False)
    workPlace = db.Column(db.Integer, nullable=False)
    holidays = db.Column(db.Integer, nullable=False)
    workHours = db.Column(db.Integer, nullable=False)
    nightShifts =  db.Column(db.Integer, nullable=False)
    offHours = db.Column(db.Integer, nullable=False)
    childern = db.Column(db.Integer, nullable=False)
    advancedPatients = db.Column(db.Integer, nullable=False)
    psychoSocial = db.Column(db.Integer, nullable=False)
    skillsTraining = db.Column(db.Integer, nullable=False)
    created_at = db.Column(db.DateTime, nullable=False)

    def __init__(self, age, sex, marital_status, specialization, 
                    speciality, yearPractice, workPlace, holidays, 
                    workHours, nightShifts, offHours, childern,
                    advancedPatients, psychoSocial, skillsTraining, created_at):
        self.age = age
        self.sex = sex 
        self.marital_status = marital_status
        self.specialization = specialization
        self.speciality = speciality
        self.yearPractice = yearPractice
        self.workPlace = workPlace
        self.holidays = holidays
        self.workHours = workHours
        self.nightShifts =  nightShifts
        self.offHours = offHours
        self.childern = childern
        self.advancedPatients = advancedPatients
        self.psychoSocial = psychoSocial
        self.skillsTraining = skillsTraining
        self.created_at=created_at

    def __repr__(self):
        return self.age, self.sex, self.marital_status, self.specialization

class Tests(db.Model):
    id = db.Column(db.Integer, primary_key = True)
    test_name = db.Column(db.Text(collation="utf8_general_ci"), nullable=False)

    def __init__(self, test_name):
        self.test_name = test_name
    
    def __repr__(self):
        return "Test name: {}".format(self.test_name)

class Questions(db.Model):
    id = db.Column(db.Integer, primary_key = True)
    test_name = db.Column(db.Integer, db.ForeignKey(Tests.id), nullable=False)
    question = db.Column(db.Text(collation="utf8_general_ci"), nullable=False)

    def __init__(self, test_name, question, id):
        self.test_name = test_name
        self.question = question
        self.id = id

    def __repr__(self):
        return '{} % {}'.format(self.id, self.question)

class Instructions(db.Model):
    id = db.Column(db.Integer, primary_key = True)
    test_name = db.Column(db.Integer, db.ForeignKey(Tests.id), nullable=False)
    instruction = db.Column(db.Text(collation="utf8_general_ci"), nullable=False)

    def __init__(self, test_name, instruction):
        self.test_name = test_name
        self.instruction = instruction
    
    def __repr__(self):
        return self.instruction

class Answers(db.Model):
    id = db.Column(db.Integer, primary_key = True)
    user_id =db.Column(db.Integer, db.ForeignKey(Users.id))
    question_id = db.Column(db.Integer, db.ForeignKey(Questions.id))
    answer = db.Column(db.Integer, nullable=False)
    submitted_at = db.Column(db.DateTime, nullable=False)


    def __init__(self, user_id, question_id, answer, submitted_at):
        self.user_id = user_id
        self.question_id = question_id
        self.answer = answer
        self.submitted_at=submitted_at
    
    def __repr__(self):
        return self.answer

