/* -*- encoding: utf-8 -*- */

function ResourcesCtrl($scope, $locale) {
    $locale.id = 'ru-ru';

    if ($locale.id == 'ru-ru') {

        $scope.common = {
        };

        $scope.layout = {
            title: "**Тайтл**"
        };
    }
}
