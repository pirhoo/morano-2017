angular.module 'morano2017'
  .controller 'MainQuoteController', ($state, $stateParams, sentence)->
    @sentence = sentence
    @url = $state.href 'main.quote', $stateParams, absolute: yes
    @medias = [
    	"J'aime lire"
    	"Le chasseur français"
    	"Production laitière magazine"
    	"Santiag magazine"
    	"L'Express"
    	"Le Point"
    	"Valeur actuelle"
    	"L'Usine nouvelle"
    	"Mon quotidien"
    	"Le Monde"
    	"AFP"
    	"Le Figaro"
    ]
    # Shuffle the media list
    @media = @medias[ Math.floor(Math.random() * @medias.length) ]
    # Tomorrow date
    @tomorrow = new Date( new Date().getTime() + 24 * 60 * 60 * 1000 )
    null