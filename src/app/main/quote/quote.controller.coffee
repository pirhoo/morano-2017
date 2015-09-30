angular.module 'morano2017'
  .controller 'MainQuoteController', ($state, $stateParams, sentence)->
    @sentence = sentence
    @url = $state.href 'main.quote', $stateParams, absolute: yes
    @medias = [
      "J'aime lire"
      "Ça cartoon"
      "Télématin"
      "Radio Loustic"
      "Mickey Parade"
      "Le chasseur français"
      "Production laitière magazine"
      "Santiag magazine"
      "Télé Z"
    ]
    # Shuffle the media list
    @media = @medias[ Math.floor(Math.random() * @medias.length) ]
    # Tomorrow date
    @tomorrow = new Date( new Date().getTime() + 24 * 60 * 60 * 1000 )
    # Function to add non-breaking spaces
    @nonBreaking = (val)-> val.replace(/\s(\?|!|:)/g , ' $1') 
    null