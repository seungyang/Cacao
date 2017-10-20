<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="java.util.*" %>
<%@ page import="cacao.model.vo.*" %>
<%List<Order> orderList = (List) request.getAttribute("orderResult"); %>
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
    <th>주문번호</th>
    <th>결제방식</th>
    <th>주문자</th>
    <th>총결제금액</th>
    <th>주문상태</th>
    <th>수정</th>
  </tr>

  <tr ng-repeat="user in users">
  	<td style="visibility: hidden;">{{user.ordercancel}}</td>
  	<td>{{user.orderid}}</td>
    <td>{{user.orderpay}}</td>
    <td>{{user.ordername}}</td>
    <td>{{user.ordertotal}}</td>
    <td>{{user.orderstatus}}</td>
    <td>
      <button class="w3-btn w3-ripple" ng-click="editUser(user.id)">✎ Edit</button>
    </td>
  </tr>

</table>
<br>
</div>

<div style="width:30%; float:left; margin-left:30px; margin-top:20px;">
<!-- <button class="w3-btn w3-green w3-ripple" ng-click="editUser('new')">✎ Create New User</button> -->

<form ng-hide="hideform" id='orderModify' name='orderModify' action="<%=pjName %>/Admin?cmd=adminOrderModify-page" method='post'>
<!--   <h3 ng-show="edit">등록</h3> -->
  <h3 ng-hide="edit">수정</h3>
    
    <label>주문번호</label>
    <input class="w3-input w3-border" type="text" id = "orderdid" name = "orderdid" ng-model="orderid" readonly>
  <br>
    <label>결제방식</label>
    <input class="w3-input w3-border" type="text" name = "orderpay" ng-model="orderpay" readonly>
  <br>
    <label>주문자</label>
    <input class="w3-input w3-border" type="text" name = "ordername" ng-model="ordername" readonly>
  <br>
   <br>
    <label>총결제금액</label>
    <input class="w3-input w3-border" type="text" name = "ordertotal" ng-model="ordertotal" readonly>
  <br>
  <label>주문상태</label>
    <select id="orderstatus" name="orderstatus" class="w3-input w3-border" ng-model="orderstatus">
     		 <option value="0">유형을 선택하세요</option>
     		 <option value="결제대기">결제대기</option>
     		 <option value="결제완료">결제완료</option>
     		 <option value="결제취소">결제취소</option>
     		 <option value="배송준비">배송준비</option>
     		 <option value="배송중">배송중</option>
     		 <option value="배송완료">배송완료</option>
     		 <option value="취소대기">취소대기</option>
     		 <option value="배송취소">배송취소</option>
   	</select>
  <br>
  <input type="submit" class="w3-btn w3-green w3-ripple" ng-disabled="error || incomplete" value="✔ Save Changes">
    <input style="visibility: hidden;"class="w3-input w3-border" ng-model="ordercancel" id="ordercancel" name="ordercancel" type="text">
  
</form>
</div>

</div>

<script>
angular.module('myApp', []).controller('userCtrl', function($scope) {
$scope.orderid = '';
$scope.orderpay = '';
$scope.ordername = '';
$scope.ordertotal = '';
$scope.orderstatus = '';
$scope.ordercancel = '';
$scope.users = [

<%for(int i=0; i< orderList.size(); i++){ %>
	{id:<%=i+1%>, orderid:'<%=orderList.get(i).getdId()%>', orderpay:'<%=orderList.get(i).getdPay()%>', ordername: "<%=orderList.get(i).getdName()%>", ordertotal: "<%=orderList.get(i).getdTotal()%>", orderstatus: "<%=orderList.get(i).getdStatus()%>", ordercancel: "<%=orderList.get(i).getdCancel()%>"},
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
    $scope.orderid = '';
    $scope.orderpay = '';
    $scope.ordername = '';
    $scope.ordertotal = '';
    $scope.orderstatus = '';
    $scope.ordercancel = '';
    } else {
   $scope.edit = false;
   $scope.orderid = $scope.users[id-1].orderid;
   $scope.orderpay = $scope.users[id-1].orderpay;
   $scope.ordername = $scope.users[id-1].ordername;
   $scope.ordertotal = $scope.users[id-1].ordertotal;
   $scope.orderstatus = $scope.users[id-1].orderstatus;
   $scope.ordercancel = $scope.users[id-1].ordercancel;
  }
};

$scope.$watch('orderid',function(){$scope.test();});
$scope.$watch('orderpay', function() {$scope.test();});
$scope.$watch('ordername', function() {$scope.test();});
$scope.$watch('ordertotal',function() {$scope.test();});
$scope.$watch('orderstatus',function() {$scope.test();});
$scope.$watch('ordercancel',function() {$scope.test();});

$scope.test = function() {
	
  if ($scope.edit && (!$scope.orderid.length || !$scope.orderpay.length || !$scope.ordername.length || !$scope.ordertotal.length || !$scope.orderstatus.length)) {
     $scope.incomplete = true;
  }
  $scope.incomplete = false;
};

});    
</script>

</body>
</html>