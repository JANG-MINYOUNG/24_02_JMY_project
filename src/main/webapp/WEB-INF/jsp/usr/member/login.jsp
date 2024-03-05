<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="LOGIN"></c:set>
<%@ include file="../common/head.jspf"%>


<div style="display: flex; justify-content: center; align-items: center; height: 80vh; flex-direction: column; line-height: 3;">
    <div style="margin-bottom: 20px; font-size: 18px;">로그인</div>
    <form method="POST" action="../member/doLogin" onsubmit="LoginForm__submit(this); return false;">
    	<input type="hidden" name="afterLoginUri" value="${param.afterLoginUri }" />
        	<div style="margin-bottom: 10px; font-size: 16px;">
            	<input autocomplete="off" type="text" placeholder="아이디" name="loginId" style="width: 350px; border-radius: 5px; outline-color: #ffc0cd;"/>
        	</div>
        	<div style="margin-bottom: 10px; font-size: 16px;">
            	<input autocomplete="off" type="password" placeholder="비밀번호" name="loginPw" style="width: 350px; border-radius: 5px; outline-color: #ffc0cd;"/>
        	</div>
        	<button type="submit" style="background-color: #CCCCCC; color: white; width: 350px; border-radius: 10px; padding: 0px;">로그인</button>
    	</form>
    	<div style="margin-top: 20px; width: 350px; display: flex; justify-content: space-between;">
        	<div style="display: flex;">
            	<a href="#" style="text-decoration: none; color: #000; font-size: 14px; margin-right: 20px;">아이디 찾기</a>
            	<a href="#" style="text-decoration: none; color: #000; font-size: 14px;">비밀번호 찾기</a>
        	</div>
        	<a href="join" style="text-decoration: none; color: green; font-size: 14px;">회원가입</a>
    	</div>
</div>


