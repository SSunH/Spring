<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.main{
 width: 90%;
 background-color: #c0c0c0;
 width:auto;
 padding: 10px; 
}
table{
margin: 0 auto;
width: 900px;
min-height: 300px;
height: auto;
border-collapse: collapse;

}
th{
  border-bottom: 2px solid white;
}
td{
border-bottom: 1px solid white;
text-align: center;
}

</style>

</head>
<body> 
     <jsp:include page="menu.jsp"/>
     
       <h1>데이터베이스에서 불러오겠슴.</h1>
      
     <table border="1">
           <tr>
             <th>번호</th>
             <th>이름</th>
             <th>나이</th>
             <th>전화번호</th>
             <th>이메일</th>
            </tr>
            <c:forEach items="${list }" var="i" >
           
            <tr>
                  <td>${i.member_no }</td>
                  <td>${i.member_name }</td>
                  <td>${i.member_age }</td>
                  <td>${i.member_tel }</td>
                  <td>${i.member_email }</td>
            </tr>
           </c:forEach> 
            
     </table>
     
</body>
</html>