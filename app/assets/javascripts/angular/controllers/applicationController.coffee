angular.module('todoApp').controller 'ApplicationController', ($log, $scope, $window, $location,  SessionService, ViewState) ->
    $scope.authorized = ->
      SessionService.authorized()

    $scope.tabHighlight = (path)->
      'active' if path == $location.$$url

    $scope.showBlock = (item, propName)->
      item[propName] = item[propName] != true

    init = ->
      $scope.viewState = ViewState


    $scope.back = ->
      $window.history.back()

    init()