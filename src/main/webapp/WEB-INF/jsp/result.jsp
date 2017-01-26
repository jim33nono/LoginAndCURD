<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Cool Bootstrap</title>
<link rel="stylesheet" href="css/bootstrap.min.css">	
</head>
<body>
<div class="container">

<!-- 	<h2>Edit By Spring Form</h2> -->
<%-- 	<form:form action="editUserInfo.do" commandName="userInfo"> --%>
<!--     <table> -->
<!--         <tr> -->
<!--             <td>ID: </td> -->
<%--             <td><form:input path="id"/></td> --%>
<!--         </tr> -->
<!--         <tr> -->
<!--             <td>User Name: </td> -->
<%--             <td><form:input path="username"/></td> --%>
<!--         </tr> -->
<!--         <tr> -->
<!--             <td>Country: </td> -->
<%--             <td><form:input path="country"/></td> --%>
<!--         </tr> -->
<!--         <tr> -->
<!--             <td>Phone: </td> -->
<%--             <td><form:input path="phone"/></td> --%>
<!--         </tr> -->
<!--         <tr> -->
<!--             <td colspan="2"> -->
<!--                 <input type="submit" value="Submit" /> -->
<!--             </td> -->
<!--         </tr> -->
<!--     </table> -->
<%-- 	</form:form> --%>


	<table class="tableDataList" border="2" cellpadding="4">
	
	</table>
	
	<h2>User information list</h2>
	<table class="table table-striped" id="datalist" border="2" cellpadding="4">
		
		
	</table>
	<br>
<!-- 	<table id="result" border="2" width="50%" cellpadding="4"> -->
		
		
<!-- 	</table> -->
	
	
	<br>
   	<h2>Edit Form</h2>
    <form class="editForm" method="post">
 		<div class="form-group">
    		<label for="inputId">ID</label>
    		<input type="text" class="form-control" id="inputId" name="editId" placeholder="ID">
  		</div>
  		<div class="form-group">
    		<label for="inputUserName">User Name</label>
    		<input type="text" class="form-control" id="inputUserName" name="editUsername" placeholder="User Name">
  		</div>
  		<div class="form-group">
    		<label for="inputCountry">Country</label>
    		<input type="text" class="form-control" id="inputCountry" name="editCountry" placeholder="Country">
  		</div>
  		<div class="form-group">
    		<label for="inputPhone">Phone</label>
    		<input type="text" class="form-control" id="inputPhone" name="editPhone" placeholder="Phone">
  		</div>
  		
 		<button type="submit" class="btn btn-default" id="editButton">Submit</button>
	</form>
	<br>
	
<!-- 	<h2>Edit Function</h2> -->
<!--     <table> -->
<!--         <tr> -->
<!--             <td>ID: </td> -->
<!--             <td><input class="idEdit"/></td> -->
<!--         </tr> -->
<!--         <tr> -->
<!--             <td>User Name: </td> -->
<!--             <td><input class="usernameEdit"/></td> -->
<!--         </tr> -->
<!--         <tr> -->
<!--             <td>Country: </td> -->
<!--             <td><input class="countryEdit"/></td> -->
<!--         </tr> -->
<!--         <tr> -->
<!--             <td>Phone: </td> -->
<!--             <td><input class="phoneEdit"/></td> -->
<!--         </tr> -->
<!--         <tr> -->
<!--             <td colspan="2"> -->
<!--                 <input type="submit" value="Edit Submit" class="editButton" /> -->

<!--             </td> -->
<!--         </tr> -->
<!--     </table> -->
<!-- 	<br> -->
	
	<!--                 onclick="location.href='resultController.do'" -->
	
<!-- 	<h2>Add Function</h2> -->
<!--     <table> -->
<!--         <tr> -->
<!--             <td>Account: </td> -->
<!--             <td><input class="accountAdd"/></td> -->
<!--         </tr> -->
<!--         <tr> -->
<!--             <td>Password: </td> -->
<!--             <td><input class="passwordAdd"/></td> -->
<!--         </tr> -->
<!--         <tr> -->
<!--             <td>User Name: </td> -->
<!--             <td><input class="usernameAdd"/></td> -->
<!--         </tr> -->
<!--         <tr> -->
<!--             <td>Country: </td> -->
<!--             <td><input class="countryAdd"/></td> -->
<!--         </tr> -->
<!--         <tr> -->
<!--             <td>Phone: </td> -->
<!--             <td><input class="phoneAdd"/></td> -->
<!--         </tr> -->
<!--         <tr> -->
<!--             <td colspan="2"> -->
<!--                 <input type="submit" value="Add Submit" class="addButton" /> -->
                                
<!--             </td> -->
<!--         </tr> -->
<!--     </table> -->
    
   <br>
   <h2>Add Form</h2>
   <form method="post">
 		<div class="form-group">
    		<label for="inputAccount">Account</label>
    		<input type="text" class="form-control" id="inputAccount" name=addAccount" placeholder="Account">
  		</div>
  		<div class="form-group">
    		<label for="inputPassword">Password</label>
    		<input type="text" class="form-control" id="inputPassword" name="addPassword" placeholder="Password">
  		</div>
  		<div class="form-group">
    		<label for="inputUserName">User Name</label>
    		<input type="text" class="form-control" id="inputUserName" name="addUsername" placeholder="User Name">
  		</div>
  		<div class="form-group">
    		<label for="inputCountry">Country</label>
    		<input type="text" class="form-control" id="inputCountry" name="addCountry" placeholder="Country">
  		</div>
  		<div class="form-group">
    		<label for="inputPhone">Phone</label>
    		<input type="text" class="form-control" id="inputPhone" name="addPhone" placeholder="Phone">
  		</div>
  		
 		<button type="submit" class="btn btn-default" id="addButton">Submit</button>
	</form>
    
    <br>
<!-- 	<h2>Add By Spring Form</h2> -->
<%-- 	<form:form action="addUserInfo.do" commandName="userInfo"> --%>
<!--     <table> -->
<!--         <tr> -->
<%--             <td><form:input path="id" type="hidden"/></td> --%>
<!--         </tr> -->
<!--         <tr> -->
<!--             <td>Account: </td> -->
<%--             <td><form:input path="account"/></td> --%>
<%--             <td><form:errors path="account" cssclass="error" style="color:#F02D2D"></form:errors></td> --%>
<!--         </tr> -->
<!--         <tr> -->
<!--             <td>Password: </td> -->
<%--             <td><form:input path="password"/></td> --%>
<%--             <td><form:errors path="password" cssclass="error" style="color:#F02D2D"></form:errors></td> --%>
<!--         </tr> -->
<!--         <tr> -->
<!--             <td>User Name: </td> -->
<%--             <td><form:input path="username"/></td>           --%>
<!--         </tr> -->
<!--         <tr> -->
<!--             <td>Country: </td> -->
<%--             <td><form:input path="country"/></td> --%>
   
<!--         </tr> -->
<!--         <tr> -->
<!--             <td>Phone: </td> -->
<%--             <td><form:input path="phone"/></td> --%>
<!--         </tr> -->
<!--         <tr> -->
<!--             <td colspan="2"> -->
<!--                 <input type="submit" value="Submit" />  -->
<!--                 onclick="location.href='resultController.do'" --> 
<!--             </td> -->
<!--         </tr> -->
<!--     </table> -->
<%-- 	</form:form> --%>

	<br>
	<div id = 'test'> </div>
	<h1>User information list</h1>
	<table class="table table-striped" border="2" cellpadding="4">
		<tr>
			<th>Id</th>
			<th>User Name</th>
			<th>Country</th>
			<th>Phone</th>
			<th>Date Time</th>
			<th>Delete</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="userlist" items="${userInfoList}">
			<tr>
				<td>${userlist.id}</td>
				<td>${userlist.username}</td>
				<td>${userlist.country}</td>
				<td>${userlist.phone}</td>
				<td>${userlist.dateTime}</td>
				<td><a href="deleteUserInfo/${userlist.id}.do">Delete</a></td>
				<td><input id="deleteBtn" class="btnDelete" type="button" value="Delete" name="${userlist.id}" data-id="${userlist.id}"/></td>
			</tr>
		</c:forEach>
	</table>

<!-- 	<h1>Add or Edit</h1> -->
<%-- 	<form:form method="POST" action="addUserInfo.do"> --%>
<!-- 		<table> -->
<!-- 			<tr> -->
<!-- 				<td>Id</td> -->
<!-- 				<td><input name="id" type="text" /></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>UserName</td> -->
<!-- 				<td><input name="username" type="text" /></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>Country</td> -->
<!-- 				<td><input name="country" type="text" /></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>Phone</td> -->
<!-- 				<td><input name="phone" type="text" /></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td><input type="submit" value="Submit" /></td> -->
<!-- 				<td><input type="checkbox" name="newrow">Test boolean</td> -->
<!-- 			</tr> -->
<!-- 		</table> -->
<%-- 	</form:form> --%>
	<br>
	
	
</div>	
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(function(){
		bindEvents();
		showDataList();
		showDataList2();
// 		showDataList3();
	});
	
	function bindEvents(){

		$('.btnDelete').bind({
			click:deleteUserInfoById
		})
		$('#editButton').bind({
			click:editUserInfo
		})
		$('#addButton').bind({
			click:addUserInfo
		})
// 		$('#deleteBtn').click(function(){
// 			deleteUserInfoById();			
// 		}) 
	}
	
	function showDataList3(){
		$.get('showDataListJs3.do').success(function(data){
			$('.tableDataList').html(data);
		})
	}
	
	function showDataList2(){
		$("#datalist").html('');
		$.post('showDataListJs2.do',{
		}).success(function(data){
			rowData = data['userInfoList'];
			console.log(rowData);
			$("#datalist").append("<tr>" +
			"<th>Id</th>" +
			"<th>User Name</th>" +
			"<th>Country</th>" +
			"<th>Phone</th>" +
			"<th>Date Time</th>" +
			"<th>Delete</th>" +
			"<th>Delete</th>" +
			"</tr>"
			);
			$.each(rowData, function(i, item){
				$("#datalist").append("<tr>" +
						              "<td>" + rowData[i].id   + "</td>" +
						              "<td>" + rowData[i].username    + "</td>" +
						              "<td>" + rowData[i].country + "</td>" +
						              "<td>" + rowData[i].phone + "</td>" +
						              "<td>" + rowData[i].dateTime + "</td>" +
						              "</tr>");
				i++;
			});
		}) 
	}
	
// 	function showDataList2(){
// 		$.ajax({
// 		    url : "showDataListJs2.do",
// 		    type: "POST",
// 		    dataType:"json",
// 		    success: function(data, textStatus, jqXHR)
// 		    {
// 		    	console.log(data);
// 				$('#datalist').append('<tr><th>Id</th><th>User Name</th><th>Country</th><th>Phone</th><th>Date Time</th><th>Delete</th></tr>');
// 					var dataList = data.getElementsByTagName("userInfoList123");
// 	    			for (var i = 0 ; i < 3 ; i++) {
// 						var idTest = dataList[i].getElementsByTagName("id");
// 						console.log(idTest);
// 	        			$('#datalist')
// 	        				.append('<tr><td></td></tr>' )
// 	        				.append(dataList[i].getElementsByTagName("id"))
// //	         				.find('td:last')
// //	          					.append(dataList[i].getElementsByTagName("id"))
// 	    			}
// 		    },
// 		    error: function (jqXHR, textStatus, errorThrown)
// 		    {
// 		 	console.log(jqXHR);
// 		 	console.log(textStatus);
// 		    }
// 		});
		
// 	}
	
	function showDataList(){
		$.get('showDataListJs.do').success(function(data){
			$('#result').html(data);
		})
	}
	
	function editUserInfo(){
		var id = $('input[name="editId"]').val();
		var username = $('input[name="editUsername"]').val();
		var country = $('input[name="editCountry"]').val();
		var phone = $('input[name="editPhone"]').val();
		$.post('editUserInfoJs.do',{
			id : id,
			username : username,
			country : country,
			phone : phone
		}).success(function(){
				alert('edit successfully');
				showDataList();
				showDataList2();
		})
		
	}
	
	function addUserInfo(){
		var account = $('input[name="addAccount"]').val();
		var password = $('input[name="addPassword"]').val();
		var username = $('input[name="addUsername"]').val();
		var country = $('input[name="addCountry"]').val();
		var phone = $('input[name="addPhone"]').val();
		$.post('addUserInfoJs.do',{
			account : account,
			password : password,
			username : username,
			country : country,
			phone : phone
		}).success(function(){
				alert('add successfully');
				showDataList();
				showDataList2();
		})
		
	}
	
	function deleteUserInfoById(){
        var id = $(this).attr('data-id');
		$.post('deleteUserInfoJs.do',{
			id : id
		}).success(function(){
				alert("delete successfully");
				showDataList();
				showDataList2();
		})
	}

</script>
</html>