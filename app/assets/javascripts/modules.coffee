# register all modules
angular.module('todoApp.services', [
  'ngRoute'
  'ngAnimate'
  'ngResource'
  'rails'
  'ng-rails-csrf'
])

angular.module('todoApp.todoList', [
  'ngRoute'
  'todoApp.services',
  'infinite-scroll'
])

angular.module('todoApp', [
  'todoApp.services'
])