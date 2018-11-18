

<landing class="landing" show={ landingPage }>
  <header> Madama Grim Blah Blah </header>
  <main-message> {mainMessage} </main-message>
  <button class="questionButton" onclick={ switchToQuestionPage } > {buttonMessage} </button>
  
  <script>
    this.mainMessage = `For your viewing pleasure, Madame Grimalkin's Soothsaying Wonder Kittens will answer your most pressing YES or NO questions.Make sure to ask carefully and abide by results.`
    this.buttonMessage = 'click here to divine your future'
    this.landingPage = true
    switchToQuestionPage() {
      this.landingPage = false
      riot.mount('questions')
    }
  </script>
</landing>