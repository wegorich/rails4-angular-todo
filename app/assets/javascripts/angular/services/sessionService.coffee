angular.module('todoApp.services').factory('SessionService', [
  '$log'
  '$resource'
  ($log, $resource)->

    authorized = ->
      getCurrentUser().authorized is 'true'

    currentUser = {authorized: true}

    getCurrentUser = ->
      currentUser

    {
    authorized
    getCurrentUser
    }
])