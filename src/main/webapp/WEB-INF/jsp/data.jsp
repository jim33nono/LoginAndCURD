<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<div>
 <c:if test="${not empty userInfoList}">
 	
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
 </c:if>

</div>

</html>