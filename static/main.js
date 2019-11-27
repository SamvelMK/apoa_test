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
