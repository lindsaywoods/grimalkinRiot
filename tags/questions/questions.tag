<questions>
  <ask-question-here>
    <h3> { questionPageText }</h3>
    <textarea show={ askHere } name="questionText" id="" cols="30" rows="10"></textarea>
  </ask-question-here>
  <answer> { answer } </answer>
  <button onclick={ displayAnswer } > { buttonText } </button>

  <script>

    const originalQuestion = `ask your question here`

    this.questionPageText = originalQuestion
    this.buttonText = `ask`
    this.askHere = true
    this.answer = ""

    displayAnswer() {

      const expr = this.buttonText;
      switch(expr) {
        
        
        case 'ask another':
        console.log('askAgain');
        this.resetPage();
        
        break;
        
        case 'ask':
          console.log('ask');
          this.buttonText = `ask another`

          
      }
      let question = document.getElementsByName('questionText')[0].value;
      this.questionPageText = question;
      this.askHere = false
      this.selectAnswer();
      
      
    }
    
    selectAnswer() {
      this.answer =  `ANSWER GOES HERE`
    }

    resetPage() {
      this.questionPageText = originalQuestion
      this.answer = ''
      console.log('resetpage');
      
    }


  </script>
</questions>