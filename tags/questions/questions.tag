<questions>
  <ask-question-here>
    <h3> { questionPageText }</h3>
    <textarea show={ askHere } name="questionText" id="" cols="30" rows="10"></textarea>
  </ask-question-here>
  <answer> { answer } </answer>
  <button onclick={ nextPage } > { buttonText } </button>

  <script>

    const originalQuestion = `ask your question here`;

    this.questionPageText = originalQuestion
    this.buttonText = `ask`
    this.askHere = true
    this.answer = ""

    nextPage() {
      const expr = this.buttonText;
      switch(expr) {
        case 'ask another':
        this.clearText();
        this.resetPage();
        break;
        
        case 'ask':
        this.askQuestion()
          this.buttonText = `ask another`
      }
    }
    
    askQuestion() {
      let question = document.getElementsByName('questionText')[0].value;
      this.questionPageText = question;
      this.askHere = false
      this.selectAnswer();
    }
    
    selectAnswer() {
      this.answer =  `ANSWER GOES HERE`
    }

    clearText() {
      document.getElementsByName('questionText')[0].value = "";
    }

    resetPage() {
      this.questionPageText = originalQuestion
      this.answer = ``
      this.askHere = true
      this.buttonText = `ask`
    }


  </script>
</questions>