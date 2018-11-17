
<landing>
  <h3> { mainMessage } </h3>
  <button class="questionButton" onclick={ switchToQuestionPage } > {buttonMessage} </button>
  <questions style={ questionStyles } >question section</questions>
  <script>

    // what we start with
  this.mainMessage = 'Madame Grimalkin and her Soothsaying Wonder Kittens'
  this.buttonMessage = 'would you like to ask a question'
  this.questionStyles = {
    display: 'none',
  }
  

  switchToQuestionPage() {
    console.log('this ran');
    this.questionStyles = {
      display: 'block'
    }
    
    // this.styles = {
    //   display: none;
    // }
  }



  
  
  </script>

</landing>