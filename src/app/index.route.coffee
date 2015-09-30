angular.module 'morano2017'
  .config ($stateProvider, $urlRouterProvider)->
    'ngInject'
    $urlRouterProvider.otherwise '/'

    $stateProvider
      .state 'main',
        url: '/'
        templateUrl: 'app/main/main.html'
        controller: 'MainController'
        controllerAs: 'main'
        resolve:
          facts: ($http)->
            # Load facts' parts
            $http.get('assets/facts.json').then (r)-> r.data
      .state 'main.quote',
        url: ':p1::p2::p3'
        templateUrl: 'app/main/quote/quote.html'
        controller: 'MainQuoteController'
        controllerAs: 'quote'
        resolve:
          sentence: ($stateParams, facts)->
            # State params shortcut
            p = $stateParams
            # Create the quote from state params
            [ facts.p1[p.p1], facts.p2[p.p2], facts.p3[p.p3] ].join ''
