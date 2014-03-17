# defining all routes
angular.module('todoApp').config [
  '$routeProvider'
  '$locationProvider'
  ($routeProvider, $locationProvider) ->
    $routeProvider

    .when '/',
        template: JST['angular/templates/tasks/index']
        controller: 'TodoListController'
    .otherwise({ redirectTo: '/' })

    $locationProvider.html5Mode true
]