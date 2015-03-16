angular.module('app.squadApp').controller("SquadListCtrl", [
  '$scope', 'SquadService', function($scope, SquadService) {
    return SquadService.list().then(function(squads) {
      $scope.squads = squads;
      return console.dir(squads);
    });
  }
]);
