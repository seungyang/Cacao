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
<img alt="" src="${pageContext.request.contextPath}/img/admin/adminQA.png" style="width: 100%; height: 240px">
<!-- 1:1문의게시판_관리자모드_타이틀 -->


<div id='first' style="width:70%; float:left; margin-left: 2%; margin-top: 20px">
<h2><a class="w3-btn w3-green w3-ripple" href="/Cacao/Admin?cmd=main-page">뒤로가기</a></h2>
<table class="w3-table w3-bordered w3-striped">
  
  
  
  <tr style="color: blue">
  	<th></th>
    <th>질문자 ID</th>
    <th style="width: 10%;">질문유형</th>
     <th>제목</th>
      <th>내용</th>
            <th style="width: 10%;">답변여부</th>
        <th>Edit</th>
  </tr>
  
<%--  <%for(int i =0; i < answerList.size(); i++){ %> --%>
  <tr  ng-repeat="user in users">
    <td style="visibility: hidden;">{{user.qId}}</td>
    <td>{{user.userId}}</td>
    <td>{{user.questType}}</td>
    <td>{{user.questTitle}}</td>
    <td>{{user.questContent}}</td>
    <td>{{user.qStatus}}</td>
       <td>
      <button class="w3-btn w3-ripple" ng-click="editUser(user.id)">✎ 답변</button>
    </td>
  </tr>
<%--   <%} %> --%>
</table>
<br>
</div>
<!-- <button class="w3-btn w3-green w3-ripple" ng-click="editUser('new')">✎ Create New User</button> -->
<div id="second" style="width:20%; float:left; margin-left:50px; margin-left: 3%; margin-top: 80px">
<form ng-hide="hideform"  action="<%=pjName%>/Admin?cmd=adminMyPageMainSave-page" name="testP" id="testP" method="post" style="margin-top: -10%">
<!--   <h3 ng-show="edit">수정창:</h3> -->
  <h3 ng-hide="edit">답변창:</h3>
<!--   히든으로 q_id값을 qId라는 이름으로 생성 -->

    <label>제목:</label>
    <input class="w3-input w3-border" type="text" ng-model="questTitle" ng-disabled="!edit" placeholder="Title">
  <br>
    <label>내용:</label>
    <textarea class="w3-input w3-border" type="text" ng-model="questContent" ng-disabled="!edit" placeholder="Context"></textarea>
  <br>
    <label>답변 내용:</label>
    <textarea class="w3-input w3-border" type="text" ng-model="qAnswer" name="qa_answer" id="qAnswer" placeholder="내용" style="height: auto; min-height: 300px;"></textarea>
  <br> 
  <label>답변상태 설정:</label>
    <select id="qStatus" name="qa_status" class="w3-input w3-border" ng-model="qStatus">
     		 <option value="0">유형을 선택하세요</option>
     		 <option value="답변대기">답변대기</option>
     		 <option value="답변완료">답변완료</option>
   	</select>
  <br>
  <button class="w3-btn w3-green w3-ripple" onclick="testPageMove()">✔ Save Changes</button>
  
  <input style="visibility: hidden;" type="text" id="qId" name="qa_id" ng-model="qId">
  <input style="visibility: hidden;" type="text" id="userId" name="qa_userid" ng-model="userId">
</form>
 
</div>
</div>

<script>
angular.module('myApp', []).controller('userCtrl', function($scope) {
$scope.qId = '';
$scope.userId = '';
$scope.questType = '';
$scope.questTitle = '';
$scope.questContent = '';
$scope.qAnswer = '';
$scope.qStatus = '';
$scope.users = [
	<%for(int i=0; i< answerList.size(); i++){ %>
		{id:<%=i+1%>, qId:"<%= answerList.get(i).getqId()%>", userId: '<%=answerList.get(i).getmEmail()%>', questType:"<%= answerList.get(i).getqCate() %>", 
			questTitle: '<%=answerList.get(i).getqTitle() %>', questContent:"<%=answerList.get(i).getqContent() %>", 
			qAnswer:'<%= answerList.get(i).getqAnswer() %>' ,qStatus:"<%=answerList.get(i).getqStatus() %>"},
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
    $scope.qId = '';
    $scope.userId = '';
    $scope.questType = '';
    $scope.questTitle = '';
    $scope.questContent = '';
    $scope.qAnswer = '';
    $scope.qStatus = '';
    
    } else {
   $scope.edit = false;
   $scope.qId = $scope.users[id-1].qId;
   $scope.userId = $scope.users[id-1].userId;
    $scope.questType = $scope.users[id-1].questType; 
    $scope.questTitle = $scope.users[id-1].questTitle; 
    $scope.questContent = $scope.users[id-1].questContent;
    $scope.qAnswer = $scope.users[id-1].qAnswer;
    $scope.qStatus = $scope.users[id-1].qStatus; 
  }
};

$scope.$watch('qId',function() {$scope.test();});
$scope.$watch('userId',function() {$scope.test();});
$scope.$watch('questType',function() {$scope.test();});
$scope.$watch('questTitle', function() {$scope.test();});
$scope.$watch('questContent', function() {$scope.test();});
$scope.$watch('qAnswer', function() {$scope.test();});
$scope.$watch('qStatus', function() {$scope.test();});

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
	
<script type="text/javascript">

function testPageMove() {

	document.testP.submit();


	}
</script>

</body>
</html>