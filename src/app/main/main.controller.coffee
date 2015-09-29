angular.module 'morano2017'
  .controller 'MainController', ($state, facts)->
    @generate = ->      
      # Initial parameters' values
      params = p1: null, p2: null, p3: null
      # Until every parameters is fill
      for p in [1..3]
        # Build parameter key
        key = 'p' + p
        # The value of this parameter must not be null
        while params[key] is null
          # Picks a random idx
          idx = Math.floor( Math.random() * facts[key].length )
          # Picks a facts from this idx
          params[key] = idx if facts[key][idx] isnt ''
      # Go to the quote param
      $state.go 'main.quote', params
    null
