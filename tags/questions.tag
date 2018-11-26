<questions>
  <ask-question-here>
    <h3> { questionPageText }</h3>
    <input show={ askHere } type="text" name="questionText" id="textArea" ></input>
  </ask-question-here>
  <answer>
    <p id="predictions" class="predictions">
      { answer }
    </p> 
  </answer>
  <button onclick={ nextPage } input="submit" type="submit" > { buttonText } </button>

  <script>

    const originalQuestion = `ask your question here`;

    this.questionPageText = originalQuestion
    this.buttonText = `ask`
    this.askHere = true
    this.answer = ""
    // this.document.myform.mytextfield.focus();
    // console.log('this.docutment', this.document);
      console.log('here', window.document.getElementById('textArea') );
      
        // window.document.getElementById('textArea').focus();
    


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
    
    
    clearText() {
      document.getElementsByName('questionText')[0].value = "";
    }
    
    resetPage() {
      this.questionPageText = originalQuestion
      this.answer = ``
      this.askHere = true
      this.buttonText = `ask`
      const test = document.getElementById('predictions')
      test.className = ""
    }
    
    selectAnswer() {
      function getRandomIndex(array) {
        const randomElement = Math.floor(Math.random() * array.length);
        return randomElement;
      }
      
      const predictions = [
        "a bird in the sky is a meal in yr belly yu have yet to catch. now is yr chance.",
        "as yu may count on mice running from my magnificence, so yu may count on this",
        "throw a fish into the ocean and it will swim away.  throw a fish to me and i will eat it.  it is certain.",
        "indeed.  keep yr claws sharp and soon you shall achieve victory",
        "it is as a window in summer. outlook is sunny.",
        "sometimes yu are the countertop.  sometimes yu are the glass and sometimes yu are the paw.  dont be the glass.  dont be the countertop.  be the paw.",
        "i dont care about this problem.  try again later.  or dont",
        "some things are not meant for tiny human brains.  be content with yr lack of knowledge.",
        "some answers will only come to yu in the dead of night.  wait until everyone else in yr home is asleep.  race flat out from room to room, careening wildly into furniture.  repeat as necessary.",
        "take a nap, then try again",
        "yu are looking for a mouse in the sky and a bird on the ground.  cease yr foolishness.",
        "many truths can be found in the entrails of a mouse.  signs point to no.",
        "even the most fierce housecat cannot defeat the vaccuum cleaner.  outlook not so good.",
        "unruffle yr fur and the answer will come to you.",
          ]

      const predictionStyles = [
        "prediction-1",
        "prediction-2",
        "prediction-3",
        "prediction-4",
        "prediction-5",
        "prediction-6",
        "prediction-7",
        "prediction-8",
        "prediction-9",
        "prediction-10",
        "prediction-11",
        "prediction-12",
        "prediction-13",
        "prediction-14",
          ];

      //generates random prediction using reusable function (getRandom...)
      const randomIndex = getRandomIndex(predictions);
      
      //get prediction text from array 'predictions'
      const getPrediction = predictions[randomIndex];
      
      // get prediction style class from array 'predictionStyles'
      const predictionStyle = predictionStyles[randomIndex];
      const predictionText = document.getElementById('predictions');

      
      predictionText.classList.add(predictionStyle)
      this.answer = getPrediction;
    
    
    
    
    
    
    
    }





  </script>
</questions>