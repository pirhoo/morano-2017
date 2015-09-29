angular.module 'morano2017'
  .controller 'MainQuoteController', ($state, $stateParams, sentence)->
    @sentence = sentence
    @url = $state.href 'main.quote', $stateParams, absolute: yes
