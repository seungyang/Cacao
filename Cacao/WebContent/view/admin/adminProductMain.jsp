<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="cacao.model.vo.*" %>
<%List<Info> infoList = (List<Info>) request.getAttribute("infolist");%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<body ng-app="myApp" ng-controller="userCtrl">

<div class="w3-container" style="width: 900px;">

<h3>Users</h3>

<table class="w3-table w3-bordered w3-striped">
  <tr>
    <th>상품번호</th>
    <th>캐릭터종류</th>
    <th>카테고리종류</th>
    <th>상품이름</th>
    <th>가격</th>
    <th>재고수량</th>
    <th>색상</th>
    <th>제조국가</th>
    <th>이미지개수</th>
   	<th>Edit</th>
  </tr>
  <tr ng-repeat="user in users">
    <div style="visibility: hidden;">{{user.change}}</div>
    <td>{{user.iId}}</td>
    <td>{{user.iChar}}</td>
    <td>{{user.iCate}}</td>
    <td>{{user.iName}}</td>
    <td>{{user.iCost}}</td>
    <td>{{user.iCnt}}</td>
    <td>{{user.iColor}}</td>
    <td>{{user.iKor}}</td>
    <td>{{user.iImgcnt}}</td>
    <td><button class="w3-btn w3-ripple" ng-click="editUser(user.id)">✎편집</button></td>
    
  </tr>
</table>
<br>
<button class="w3-btn w3-green w3-ripple" ng-click="editUser('new')">✎ Create New User</button>
<input type="button" value="뒤로가기" class="w3-btn w3-green w3-ripple" onclick="location.href='/Cacao/Admin?cmd=main-page'"/>
<button class="w3-btn w3-green w3-ripple" ng-click="Register('new')">Register Image</button>
</div>



<div id="hidden" style="float: right;margin-top: -197%;width: 600px;">
<form ng-hide="hideform" action="/Cacao/Admin?cmd=adminProductMainSave-page" method="post">
  <h3 ng-show="edit">Create New User:</h3>
  <h3 ng-hide="edit">Edit User:</h3>
    
  	<label>상품번호:</label>
    <input class="w3-input w3-border" name="iId" ng-model="iId"  placeholder="상품번호" >
  <br>
  	<label>캐릭터종류:</label>
    <select class="w3-input w3-border" ng-model="iChar" name="iChar">
    <option value="라이언">라이언</option>
    <option value="어피치">어피치</option>
    </select>
  <br>
  	<label>카테고리종류:</label>
    <select class="w3-input w3-border" ng-model="iCate" name="iCate">
    <option value="미니인형">미니인형</option>
    <option value="신발">신발</option>
    <option value="노트북악세서리">노트북악세서리</option>
    <option value="컵텀블러">컵텀블러</option>
    </select>
  <br>
  	<label>상품이름:</label>
    <input class="w3-input w3-border" type="text" ng-model="iName" name="iName" placeholder="상품이름">
  <br>
  	<label>가격:</label>
    <input class="w3-input w3-border" type="text" ng-model="iCost" name='iCost'  placeholder="가격">
  <br>
  	<label>재고수량:</label>
    <input class="w3-input w3-border" type="text" ng-model="iCnt" name='iCnt'  placeholder="재고수량">
  <br>
  	<label>색상:</label>
    <input class="w3-input w3-border" type="text" ng-model="iColor" name='iColor'  placeholder="색상">
  <br>
  	<label>제조국가:</label>
    <input class="w3-input w3-border" type="text" ng-model="iKor" name='iKor'  placeholder="제조국가">
  <br>
  	<label>이미지개수:</label>
    <input class="w3-input w3-border" name='iImgcnt' type="text" ng-model="iImgcnt"  placeholder="이미지개수">
  <br>
  <input style="visibility: hidden;"class="w3-input w3-border" ng-model="change" id="change" name="change" type="text"> 	
  <input class="w3-btn w3-green w3-ripple" ng-disabled="error || incomplete" type="submit" value='✔ Save Changes'/>
</form>
</div>



<script>
angular.module('myApp', []).controller('userCtrl', function($scope) {
$scope.iId = '';
$scope.iChar = '';
$scope.iCate = '';
$scope.iName = '';
$scope.iCost  = '';
$scope.iCnt = '';
$scope.iColor = '';
$scope.iKor = '';
$scope.iImgcnt = '';
$scope.change = '';

$scope.users = [ 
<%for(int i=0;i<infoList.size();i++){%>
{id:<%=i+1%>,iId:'<%=infoList.get(i).getiId()%>',iChar:'<%=infoList.get(i).getiChar()%>',iCate:'<%=infoList.get(i).getiCate()%>',iName:'<%=infoList.get(i).getiName()%>',iCost:'<%=infoList.get(i).getiCost()%>',iCnt:'<%=infoList.get(i).getiCnt()%>',iColor:'<%=infoList.get(i).getiColor()%>',iKor:'<%=infoList.get(i).getiKor()%>',iImgcnt:'<%=infoList.get(i).getiImgcnt()%>'},
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
    $scope.iId = '';
    $scope.iChar = '';
    $scope.iCate = '';
    $scope.iName = '';
    $scope.iCost  = '';
    $scope.iCnt = '';
    $scope.iColor = '';
    $scope.iKor = '';
    $scope.iImgcnt = '';
    $scope.change = '0';
    } else {
    $scope.edit = false;
    $scope.iId =  $scope.users[id-1].iId;
    $scope.iChar =  $scope.users[id-1].iChar;
    $scope.iCate =  $scope.users[id-1].iCate;
    $scope.iName =  $scope.users[id-1].iName;
    $scope.iCost  =  $scope.users[id-1].iCost;
    $scope.iCnt =  $scope.users[id-1].iCnt;
    $scope.iColor =  $scope.users[id-1].iColor;
    $scope.iKor =  $scope.users[id-1].iKor;
    $scope.iImgcnt =  $scope.users[id-1].iImgcnt;
    $scope.change = '1';

  }
};

$scope.$watch('iId',function() {$scope.test();});
$scope.$watch('iChar',function() {$scope.test();});
$scope.$watch('iCate', function() {$scope.test();});
$scope.$watch('iName', function() {$scope.test();});
$scope.$watch('iCost',function() {$scope.test();});
$scope.$watch('iCnt',function() {$scope.test();});
$scope.$watch('iColor', function() {$scope.test();});
$scope.$watch('iKor', function() {$scope.test();});
$scope.$watch('iImgcnt',function() {$scope.test();});



$scope.test = function() {
 
	  $scope.incomplete = false;

};

});    
</script>

</body>
</html>