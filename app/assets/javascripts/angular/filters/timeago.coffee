angular.module('todoApp').filter "timeago", ->
  (data) ->
    if $(data).hasClass('timeago')
      $(data).timeago().text()
    else
      data
