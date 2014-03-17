angular.module("todoApp").filter "html", [
  "$sce"
  ($sce) ->
    return (text) ->
      $sce.trustAsHtml text
]