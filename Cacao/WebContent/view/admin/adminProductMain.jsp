<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<body ng-app="myApp" ng-controller="userCtrl">

<div class="w3-container" style="width: 900px;">

<h3>Users</h3>

<table class="w3-table w3-bordered w3-striped">
  <tr>
    <th>Edit</th>
    <th>상품번호</th>
    <th>캐릭터종류</th>
    <th>카테고리종류</th>
    <th>상품이름</th>
    <th>가격</th>
    <th>재고수량</th>
    <th>색상</th>
    <th>제조국가</th>
    <th>이미지개수</th>
    <th>상세정보</th>
  </tr>
  <tr ng-repeat="user in users">
    <td>
      <button class="w3-btn w3-ripple" ng-click="editUser(user.iId)">✎ Edit</button>
    </td>
    <td>{{ user.iId }}</td>
    <td>{{ user.iChar }}</td>
    <td>{{ user.iCate }}</td>
    <td>{{ user.iName }}</td>
    <td>{{ user.iCost }}</td>
    <td>{{ user.iCnt }}</td>
    <td>{{ user.iColor }}</td>
    <td>{{ user.iKor }}</td>
    <td>{{ user.iImgcnt }}</td>
    <td>{{ user.iDetail }}</td>
  </tr>
</table>
<br>
<button class="w3-btn w3-green w3-ripple" ng-click="editUser('new')">✎ Create New User</button>
</div>
<div id="hidden" style="float: right;margin-top: -32%;width: 600px;">
<form ng-hide="hideform">
  <h3 ng-show="edit">Create New User:</h3>
  <h3 ng-hide="edit">Edit User:</h3>
    
  	<label>상품번호:</label>
    <input class="w3-input w3-border" type="text" ng-model="iId" placeholder="상품번호">
  <br>
  	<label>캐릭터종류:</label>
    <select class="w3-input w3-border" ng-model="iChar">
    <option value="라이언">라이언</option>
    <option value="무지">무지</option>
    </select>
  <br>
  	<label>카테고리종류:</label>
    <select class="w3-input w3-border" ng-model="iCate">
    <option value="노트북악세서리">노트북악세서리</option>
    <option value="인형">인형</option>
    <option value="슬리퍼">슬리퍼</option>
    <option value="컵텀블러">컵텀블러</option>
    </select>
  <br>
  	<label>상품이름:</label>
    <input class="w3-input w3-border" type="text" ng-model="iName" placeholder="상품이름">
  <br>
  	<label>가격:</label>
    <input class="w3-input w3-border" type="text" ng-model="iCost"  placeholder="가격">
  <br>
  	<label>재고수량:</label>
    <input class="w3-input w3-border" type="text" ng-model="iCnt"  placeholder="재고수량">
  <br>
  	<label>색상:</label>
    <input class="w3-input w3-border" type="text" ng-model="iColor"  placeholder="색상">
  <br>
  	<label>제조국가:</label>
    <input class="w3-input w3-border" type="text" ng-model="iKor"  placeholder="제조국가">
  <br>
  	<label>이미지개수:</label>
    <input class="w3-input w3-border" type="text" ng-model="iImgcnt" placeholder="이미지개수">
  <br>
   	<label>상세정보:</label>
    <textarea class="w3-input w3-border" type="text" ng-model="iDetail" placeholder="내용" style="height: auto; min-height: 300px;"></textarea>
  <br> 
  <button class="w3-btn w3-green w3-ripple" ng-disabled="error || incomplete">✔ Save Changes</button>
</form>
</div>
<script>
angular.module('myApp', []).controller('userCtrl', function($scope) {
$scope.fName = '';
$scope.lName = '';
$scope.passw1 = '';
$scope.passw2 = '';
$scope.users = [
{id:1, fName:'Hege', lName:"Pege" },
{id:2, fName:'Kim',  lName:"Pim" },
{id:3, fName:'Sal',  lName:"Smith" },
{id:4, fName:'Jack', lName:"Jones" },
{id:5, fName:'John', lName:"Doe" },
{id:6, fName:'Peter',lName:"Pan" }
];
$scope.edit = true;
$scope.error = false;
$scope.incomplete = false; 
$scope.hideform = true; 
$scope.editUser = function(id) {
  $scope.hideform = false;
  if (id == 'new') {
    $scope.edit = true;
    $scope.incomplete = true;
    $scope.fName = '';
    $scope.lName = '';
    } else {
    $scope.edit = false;
    $scope.fName = $scope.users[id-1].fName;
    $scope.lName = $scope.users[id-1].lName; 
  }
};

$scope.$watch('passw1',function() {$scope.test();});
$scope.$watch('passw2',function() {$scope.test();});
$scope.$watch('fName', function() {$scope.test();});
$scope.$watch('lName', function() {$scope.test();});

$scope.test = function() {
  if ($scope.passw1 !== $scope.passw2) {
    $scope.error = true;
    } else {
    $scope.error = false;
  }
  $scope.incomplete = false;
  if ($scope.edit && (!$scope.fName.length ||
  !$scope.lName.length ||
  !$scope.passw1.length || !$scope.passw2.length)) {
     $scope.incomplete = true;
  }
};

});    
</script>

</body>
</html>