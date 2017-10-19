<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="java.util.*" %>
<%@ page import="cacao.model.vo.*" %>
<%List<Service> serviceList = (List) request.getAttribute("serviceResult"); %>
<%
   String pjName = "/Cacao"; 
%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> What to do </title>
</head>
<body ng-app="myApp" ng-controller="userCtrl">

<div class="w3-container" style="width:100%">

<div display="inline" style="width:60%; float:left;">
<h3>Users</h3>


<table class="w3-table w3-bordered w3-striped">
  <tr>
  	<th></th>
    <th>유형</th>
    <th>카테고리</th>
    <th>제목</th>
    <th>내용</th>
    <th>첨부파일</th>
    <th>수정</th>
  </tr>
<%--   <%for(int i=0; i< serviceList.size(); i++){ %> --%>
  <tr ng-repeat="user in users">
  	<td style="visibility: hidden;">{{user.number}}</td>
    <td>{{user.kind}}</td>
    <td>{{user.cate}}</td>
    <td>{{user.title}}</td>
    <td>{{user.detail}}</td>
    <td>{{user.image}}</td>
<%--     <td><%=serviceList.get(i).getsKind() %></td> --%>
<%--     <td><%=serviceList.get(i).getsCate() %></td> --%>
<%--     <td><%=serviceList.get(i).getsTitle() %></td> --%>
<%--     <td><%=serviceList.get(i).getsDetail() %></td> --%>
<%--     <td><%=serviceList.get(i).getsImage() %></td> --%>
    <td>
      <button class="w3-btn w3-ripple" ng-click="editUser(user.id)">✎ Edit</button>
    </td>
  </tr>
<%--   <%} %> --%>
</table>
<br>
</div>

<div style="width:30%; float:left; margin-left:30px; margin-top:20px;">
<button class="w3-btn w3-green w3-ripple" ng-click="editUser('new')">✎ Create New User</button>

<form ng-hide="hideform" id='serviceInsert' name='serviceInsert' action="<%=pjName %>/Admin?cmd=adminServiceSave-page" method='post'>
  <h3 ng-show="edit">등록</h3>
  <h3 ng-hide="edit">수정</h3>
    <label>유형</label>
    <select id="qCate" name="servicekind" class="w3-input w3-border" ng-model="kind">
     		 <option value="0">문의 유형을 선택하세요</option>
     		 <option value="FAQ">FAQ</option>
     		 <option value="공지사항">공지사항</option>
   	</select>
  <br>
    <label>카테고리</label>
    <input class="w3-input w3-border" type="text" name = "servicecate" ng-model="cate" placeholder="카테고리를 입력하세요">
  <br>
    <label>제목</label>
    <input class="w3-input w3-border" type="text" name = "servicetitle" ng-model="title" placeholder="제목을 입력하세요">
  <br>
    <label>내용</label>
    <textarea class="w3-input w3-border" ng-model="detail" name="servicedetail" rows="7" cols="24" placeholder="내용을 입력하세요" ></textarea>
  <br>
   <br>
    <label>첨부파일</label>
    <input class="w3-input w3-border" ng-model="image" id="file" name="serviceimage" type="file" placeholder="첨부 파일공간" >
  <br>
  <input type="submit" class="w3-btn w3-green w3-ripple" ng-disabled="error || incomplete" value="✔ Save Changes">
    <input style="visibility: hidden;"class="w3-input w3-border" ng-model="number" id="serviceid" name="serviceid" type="text">
  
</form>
</div>

</div>

<script>
angular.module('myApp', []).controller('userCtrl', function($scope) {
$scope.number = '';
$scope.kind = '';
$scope.cate = '';
$scope.title = '';
$scope.detail = '';
$scope.image = '';
$scope.users = [

<%for(int i=0; i< serviceList.size(); i++){ %>
	{id:<%=i+1%>, number:'<%=serviceList.get(i).getsId()%>', kind:'<%=serviceList.get(i).getsKind()%>', cate: "<%=serviceList.get(i).getsCate()%>", title: "<%=serviceList.get(i).getsTitle()%>", detail: "<%=serviceList.get(i).getsDetail()%>", image: "<%=serviceList.get(i).getsImage()%>"},
<%}%>
];

//alert($scope.users.length);

$scope.edit = true;
$scope.error = false;
$scope.incomplete = false; 
$scope.hideform = true; 
$scope.editUser = function(id) {
  $scope.hideform = false;
  if (id == 'new') {
    $scope.edit = true;
    $scope.incomplete = true;
    $scope.number = 0;
    $scope.kind = '';
    $scope.cate = '';
    $scope.title = '';
    $scope.detail = '';
    $scope.image = '';
    } else {
   $scope.edit = false;
   $scope.number = $scope.users[id-1].number;
   $scope.kind = $scope.users[id-1].kind;
   $scope.cate = $scope.users[id-1].cate;
   $scope.title = $scope.users[id-1].title;
   $scope.detail = $scope.users[id-1].detail;
   $scope.image = $scope.users[id-1].image;
  }
};

$scope.$watch('number',function(){$scope.test();});
$scope.$watch('kind', function() {$scope.test();});
$scope.$watch('cate', function() {$scope.test();});
$scope.$watch('title',function() {$scope.test();});
$scope.$watch('detail',function() {$scope.test();});
$scope.$watch('image',function() {$scope.test();});

$scope.test = function() {
	
  if ($scope.edit && (!$scope.kind.length || !$scope.cate.length || !$scope.title.length || !$scope.detail.length || !$scope.image.length)) {
     $scope.incomplete = true;
  }
  $scope.incomplete = false;
};

});    
</script>

</body>
</html>