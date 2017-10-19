<%@ page contentType="text/html; charset=utf-8"%>
<%

	String pjName = "/Cacao";
	
%>

<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<body ng-app="myApp" ng-controller="userCtrl">



<div style="width:100%">
<img alt="" src="${pageContext.request.contextPath}/img/admin/AdminTitleHeader.png" style="width: 100%; height: 120px">
<!-- 1:1문의게시판_관리자모드_타이틀 -->
<h1 style="margin-top: -90px; margin-left: 7%">1:1문의게시판 답변</h1>

<div id='first' style="width:58%; float:left; margin-left: 4.5%; margin-top: 60px">
<table class="w3-table w3-bordered w3-striped">
  <tr style="color: blue">
  
    <th>질문자 ID</th>
    <th>질문유형</th>
     <th>제목</th>
      <th>내용</th>
            <th>답변여부</th>
        <th>Edit</th>

  </tr>
  <tr ng-repeat="user in users">
    <td>{{ user.userId }}</td>
    <td>{{ user. questType}}</td>
      <td>{{ user.questTitle }}</td>  
      <td>{{ user.questContext }}</td>
       <td>{{ user.questCheck }}</td>
       <td>
      <button class="w3-btn w3-ripple" ng-click="editUser(user.id)">✎ 답변</button>
    </td>
      
  </tr>
</table>
<br>
</div>
<!-- <button class="w3-btn w3-green w3-ripple" ng-click="editUser('new')">✎ Create New User</button> -->
<div id="second" style="width:30%; float:left; margin-left:50px; margin-left: 4.5%; margin-top: 80px">
<form ng-hide="hideform"   style="margin-top: -10%">
<!--   <h3 ng-show="edit">수정창:</h3> -->
  <h3 ng-hide="edit">답변창:</h3>
    <label>제목:</label>
    <input class="w3-input w3-border" type="text" ng-model="questTitle" ng-disabled="!edit" placeholder="Title">
  <br>
    <label>내용:</label>
    <input class="w3-input w3-border" type="text" ng-model="questContext" ng-disabled="!edit" placeholder="Context">
  <br>
    <label>답변 제목:</label>
    <input class="w3-input w3-border" type="textField" ng-model="text" placeholder="제목">
  <br>
    <label>질문 답변:</label>
    <textarea class="w3-input w3-border" type="text" ng-model="text2" placeholder="내용" style="height: auto; min-height: 200px;"></textarea>
  <br>
  <button class="w3-btn w3-green w3-ripple" ng-disabled="error || incomplete">✔ Save Changes</button>
</form>

</div>
</div>

<script>
angular.module('myApp', []).controller('userCtrl', function($scope) {
$scope.userId = '';
$scope.questType = '';
$scope.questTitle = '';
$scope.questContext = '';
$scope.questCheck = '';
$scope.users = [
{id:1, userId:'Hege', questType:"Pege",  questTitle:"TiTLE1",  questContext:"TEXT1",  questCheck:"답변완료"  },
{id:2, userId:'Kim',  questType:"Pim" ,  questTitle:"TiTLE2",  questContext:"TEXT2",  questCheck:"답변작성중"},
{id:3, userId:'Sal',  questType:"Smith" ,  questTitle:"TiTLE3",  questContext:"TEXT3",  questCheck:"답변대기중"},
{id:4, userId:'Jack', questType:"Jones" ,  questTitle:"TiTLE4",  questContext:"TEXT4",  questCheck:"답변대기중"},
{id:5, userId:'John', questType:"Doe",  questTitle:"TiTLE5",  questContext:"TEXT5",  questCheck:"답변완료" },
{id:6, userId:'Peter',questType:"Pan",  questTitle:"TiTLE6",  questContext:"TEXT6",  questCheck:"답변완료" }
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
    $scope.questTitle = '';
    $scope.questContext = '';
    } else {
    $scope.edit = false;
    $scope.questTitle = $scope.users[id-1].questTitle;
    $scope.questContext = $scope.users[id-1].questContext; 
  }
};

$scope.$watch('userId',function() {$scope.test();});
$scope.$watch('questType',function() {$scope.test();});
$scope.$watch('questTitle', function() {$scope.test();});
$scope.$watch('questContext', function() {$scope.test();});

$scope.test = function() {
  if ($scope.userId !== $scope.questType) {
    $scope.error = true;
    } else {
    $scope.error = false;
  }
  $scope.incomplete = false;
  if ($scope.edit && (!$scope.questTitle.length ||
  !$scope.questContext.length ||
  !$scope.userId.length || !$scope.questType.length)) {
     $scope.incomplete = true;
  }
};

});    
</script>

</body>
</html>



