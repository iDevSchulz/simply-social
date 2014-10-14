settings = ['$http', ($http) ->
  setting = {}
  setting.getSettings = ->
    $http.get('data/settings.json').success (response) ->
      return response.settings
  setting
]

angular
  .module 'settings.Service', []
  .factory 'settings', settings