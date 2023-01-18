<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="menu">
    <ul>
        <li onclick="location.href='./index'">index로</li>
        <li onclick="location.href='./member'">멤버목록</li>
        <li>게시판2</li>
        <li>게시판3</li>
        <li>게시판4</li>
        <li>로그인</li>
    </ul>

</div>
<style>
body{
margin:0;
padding:0;
}
.menu{
height: 30px;
widows: 100%;
background-color:gray;
}
.menu ul{
margin:0;
line-height: 30px;
text-decoration: none;
}
.menu ul li{
display: inline-block;
width: 100px;
margin: 0 10px;
color:white;
text-align: center;
}
.menu ul li:hover{
background-color: blue;
font-size: 20px;

}



</style>