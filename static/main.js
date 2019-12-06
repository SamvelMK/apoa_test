var app = new Vue({

  el:"#test",

  data: {
    step: 1,
    totalsteps: 6,
    modal: false,

    answers: {
      demographics:{
  
      },
      maslach:{
       
      },
      pil:{
       
      },
      mri:{
       
      },
      date:{
        created_at: (new Date()).toISOString()
      }
    } 
  },

  methods:{
    nextStep:function()
    {
      this.step++;
    },
    prevStep:function()
    {
      this.step--;
    },
    submitData:function()
      {
        this.step++;
        
        var data = {
          demographics: this.answers.demographics,
          maslach: this.answers.maslach,
          pil: this.answers.pil,
          mri: this.answers.mri,
          date: this.answers.date
        }
        
        fetch('/test/submit',{
          method: 'POST',
          body: JSON.stringify(data),
          cache: 'no-cache',
          headers: new Headers({
            'content-type':'application/json'
          })
        })
      }
  },
  computed: {
    
    // this to compute the burnout scores based on Maslach scale. The burnoutScore is computed based the logic described at
    // https://nam.edu/valid-reliable-survey-instruments-measure-burnout-well-work-related-dimensions/
    // the burnout variable is a boolean value that is true or false based on the determined cut-off score on the given two dimensions
    // Emotional exhaustion and Depersonalization. 

    burnoutScore: function() {
      let burnout = Boolean(false);
      let sumEe = 0;
      let sumDp = 0;

      let EE = ['question_1', 'question_2', 'question_3', 'question_6',
                'question_8', 'question_13', 'question_14', 'question_16', 'question_20'];

      let DP = ['question_5', 'question_10', 'question_11', 'question_15', 'question_22'];

      for( var el in this.answers.maslach ) {
        if (EE.includes(el)){
          if( this.answers.maslach.hasOwnProperty( el ) ) {
            sumEe += parseInt( this.answers.maslach[el] );
          } 
        } else if (DP.includes(el)){
          sumDp += parseInt( this.answers.maslach[el] )
        }
      }
      if (sumEe >= 27 || sumDp >=10){
        burnout = Boolean(true)
        return burnout;
      } else {
        return burnout;
      }
    }
   }
  
})

function ChangeColor(tableRow, highLight)
    {
    if (highLight)
    {
      tableRow.style.backgroundColor = '#f9d5d5';
    }
    else
    {
      tableRow.style.backgroundColor = '#E8ECEF';
    }
  }
