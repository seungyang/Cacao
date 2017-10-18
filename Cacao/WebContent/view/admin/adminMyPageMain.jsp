<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="cacao.model.vo.*" %>
<%List<QA> answerList = (List<QA>) request.getAttribute("answerList");%>
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
  
<%--  <%for(int i =0; i < answerList.size(); i++){ %> --%>
  <tr  ng-repeat="user in users">
    <td>{{user.userId}}</td>
    <td>{{user.questType}}</td>
    <td>{{user.questTitle}}</td>
    <td>{{user.questContent}}</td>
          <td>{{user.questCheck}}</td>
       <td>
      <button class="w3-btn w3-ripple" ng-click="editUser(user.id)">✎ 답변</button>
    </td>
  </tr>
<%--   <%} %> --%>
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
    <textarea class="w3-input w3-border" type="text" ng-model="questContent" ng-disabled="!edit" placeholder="Context"></textarea>
  <br>
    <label>답변 제목:</label>
    <textarea class="w3-input w3-border" type="text" ng-model="questAnswer" placeholder="내용" style="height: auto; min-height: 300px;"></textarea>
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
$scope.questContent = '';
$scope.questStatus = '';
$scope.users = [
	<%for(int i=0; i< answerList.size(); i++){ %>
		{id:<%=i+1%>,userId: '<%=answerList.get(i).getmEmail()%>', questType:"<%= answerList.get(i).getqCate() %>", 
			questTitle: '<%=answerList.get(i).getqTitle() %>', questContent:"<%=answerList.get(i).getqContent() %>", 
			questStatus:'<%=answerList.get(i).getqStatus() %>'},
		<%}%>
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
    $scope.userId = '';
    $scope.questType = '';
    $scope.questTitle = '';
    $scope.questContent = '';
    $scope.questStatus = '';
    
    } else {
   $scope.edit = false;
   $scope.userId = $scope.users[id-1].userId;
    $scope.questType = $scope.users[id-1].questType; 
    $scope.questTitle = $scope.users[id-1].questTitle; 
    $scope.questContent = $scope.users[id-1].questContent; 
    $scope.questStatus = $scope.users[id-1].questStatus; 
  }
};

$scope.$watch('userId',function() {$scope.test();});
$scope.$watch('questType',function() {$scope.test();});
$scope.$watch('questTitle', function() {$scope.test();});
$scope.$watch('questContent', function() {$scope.test();});
$scope.$watch('questStatus', function() {$scope.test();});

$scope.test = function() {
  if ($scope.questTitle !== $scope.questContent) {
    $scope.error = true;
    } else {
    $scope.error = false;
  }
  $scope.incomplete = false;
  if ($scope.edit && (!$scope.userId.length ||
  !$scope.questContent.length ||
  !$scope.questTitle.length || !$scope.questContent.length)) {
     $scope.incomplete = true;
  }
};

});    
</script>

</body>
</html>