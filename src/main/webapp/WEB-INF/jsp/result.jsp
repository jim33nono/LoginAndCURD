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


	<table class="tableDataList" border="2" width="50%" cellpadding="4">
	
	</table>
	<table class="datalist" border="2" width="50%" cellpadding="4">
		
		
	</table>
	<br>
<!-- 	<table id="result" border="2" width="50%" cellpadding="4"> -->
		
		
<!-- 	</table> -->
	
	<h2>Edit Function</h2>
    <table>
        <tr>
            <td>ID: </td>
            <td><input class="idEdit"/></td>
        </tr>
        <tr>
            <td>User Name: </td>
            <td><input class="usernameEdit"/></td>
        </tr>
        <tr>
            <td>Country: </td>
            <td><input class="countryEdit"/></td>
        </tr>
        <tr>
            <td>Phone: </td>
            <td><input class="phoneEdit"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Edit Submit" class="editButton" onclick="location.href='resultController.do'"/>
            </td>
        </tr>
    </table>
	<br>
	
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
<!--                                 onclick="location.href='resultController.do'" -->
<!--             </td> -->
<!--         </tr> -->
<!--     </table> -->
    
    <br>
	<h2>Add By Spring Form</h2>
	<form:form action="addUserInfo.do" commandName="userInfo">
    <table>
        <tr>
            <td><form:input path="id" type="hidden"/></td>
        </tr>
        <tr>
            <td>Account: </td>
            <td><form:input path="account"/></td>
            <td><form:errors path="account" cssclass="error" style="color:#F02D2D"></form:errors></td>
        </tr>
        <tr>
            <td>Password: </td>
            <td><form:input path="password"/></td>
            <td><form:errors path="password" cssclass="error" style="color:#F02D2D"></form:errors></td>
        </tr>
        <tr>
            <td>User Name: </td>
            <td><form:input path="username"/></td>          
        </tr>
        <tr>
            <td>Country: </td>
            <td><form:input path="country"/></td>
   
        </tr>
        <tr>
            <td>Phone: </td>
            <td><form:input path="phone"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Submit" /> 
<!--                 onclick="location.href='resultController.do'" -->
            </td>
        </tr>
    </table>
	</form:form>
	<div id = 'test'> </div>
	<h1>User information list</h1>
	<table border="2" width="50%" cellpadding="4">
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
		$('.editButton').bind({
			click:editUserInfo
		})
		$('.addButton').bind({
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
		
		$.post('showDataListJs2.do',{
		}).success(function(data){
			console.log(data);
// 			$('.datalist').append('<tr><th>Id</th><th>User Name</th><th>Country</th><th>Phone</th><th>Date Time</th><th>Delete</th></tr>');
// 				var dataList = data.getElementsByTagName("userInfoList123");
//     			for (var i = 0 ; i < 3 ; i++) {
// 					var idTest = dataList[i].getElementsByTagName("id");
// 					console.log(idTest);
//         			$('.datalist')
//         				.append('<tr><td></td></tr>' )
//         				.append(dataList[i].getElementsByTagName("id"))
// //         				.find('td:last')
// //          					.append(dataList[i].getElementsByTagName("id"))
//     			}

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
// 				$('.datalist').append('<tr><th>Id</th><th>User Name</th><th>Country</th><th>Phone</th><th>Date Time</th><th>Delete</th></tr>');
// 					var dataList = data.getElementsByTagName("userInfoList123");
// 	    			for (var i = 0 ; i < 3 ; i++) {
// 						var idTest = dataList[i].getElementsByTagName("id");
// 						console.log(idTest);
// 	        			$('.datalist')
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
		var id = $('.idEdit').val();
		var username = $('.usernameEdit').val();
		var country = $('.countryEdit').val();
		var phone = $('.phoneEdit').val();
		$.post('editUserInfoJs.do',{
			id : id,
			username : username,
			country : country,
			phone : phone
		}).success(function(){
				alert("edit successfully");
				showDataList();
				showDataList3();
		})
		
	}
	
	function addUserInfo(){
		var account = $('.accountAdd').val();
		var password = $('.passwordAdd').val();
		var username = $('.usernameAdd').val();
		var country = $('.countryAdd').val();
		var phone = $('.phoneAdd').val();
		$.post('addUserInfoJs.do',{
			account : account,
			password : password,
			username : username,
			country : country,
			phone : phone
		}).success(function(){
				alert('add successfully');
				showDataList();
				showDataList3();
		})
		
	}
	
	function deleteUserInfoById(){
        var id = $(this).attr('data-id');
		$.post('deleteUserInfoJs.do',{
			id : id,
		}).success(function(){
				alert("delete successfully");
				showDataList();
				showDataList3();
		})
	}
	
</script>
</html>