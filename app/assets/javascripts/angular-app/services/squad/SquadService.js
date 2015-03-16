angular.module('app.squadApp').factory('SquadService', [
  'Restangular', 'Squad', function(Restangular, Squad) {
    var model;
    model = 'squads';
    Restangular.setBaseUrl("/api")
    Restangular.extendModel(model, function(obj) {
      return angular.extend(obj, Squad);
    });
    return {
      list: function() {
        return Restangular.all(model).getList();
      }
    };
  }
]);