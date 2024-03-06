<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="JOIN"></c:set>
<%@ include file="../common/head.jspf"%>

<style>
    .upload-container {
        display: flex;
        align-items: center;
    }

    .upload-btn {
        border-radius: 20px;
        padding: 10px;
        border: 2px solid #ffc0cd;
        outline: none;
        font-size: 16px;
        background-color: white;
        margin-right: 10px;
    }

    .upload-btn input[type=file] {
        display: none;
    }
</style>

<style>
    .upload-container {
        display: flex;
        align-items: center;
    }

    .upload-btn {
        border-radius: 20px;
        padding: 10px;
        border: 2px solid #ffc0cd;
        outline: none;
        font-size: 16px;
        background-color: white;
        margin-right: 10px;
    }

    .upload-btn input[type=file] {
        display: none;
    }

    .pass-match {
        color: green;
    }

    .pass-mismatch {
        color: red;
    }
</style>

<script>
$(document).ready(function () {
    // 아이디 입력 필드의 값이 변경될 때마다 중복체크 여부를 다시 "no"로 설정
    $("input[name='loginId']").on("input", function() {
        $("#check").val("no");
    });

    $("#confirm").click(function () {
        var id = $("input[name='loginId']").val();

        // 입력한 아이디가 비어있는 경우 알림창 띄우기
        if (id.trim() === '') {
            alert("아이디를 입력해주세요.");
            return;
        }

        // 아이디를 서버로 전송하여 중복 여부 확인
        $.ajax({
            type: "POST",
            url: "/idOverlap",
            data: {
                id: id
            },
            success: function (data) {
                if (data === "true") {
                    alert("사용 가능한 아이디입니다.");
                    $("#check").val("yes"); // 중복체크 여부 변경
                    $("form").submit(); // 폼 제출
                } else if (data === "false") {
                    alert("중복된 아이디입니다.");
                }
            },
            error: function () {
                alert("서버와의 통신 중 오류가 발생했습니다.");
            }
        });
    });

    $("form").submit(function() {
        if ($("#check").val() === 'no') {
            alert("중복체크를 해주세요.");
            return false; // 폼 제출 취소
        }
    });
});
</script>


<div style="display: flex; justify-content: center; align-items: center; height: 80vh; flex-direction: column; line-height: 3;">
    <div style="margin-bottom: 20px; font-size: 18px;">회원가입</div>
    <form method="POST" action="doJoin" onsubmit="JoinForm__submit(this); return false;">
        <div style="margin-bottom: 10px; font-size: 16px;">
    		<label class="upload-btn">
        		<i class="fas fa-user"></i>프로필 사진 업로드
        		<input type="file" name="profileImage" accept="image/*" />
   		 	</label>
		</div>
        <div style="display: flex; margin-bottom: 10px;">
            <input autocomplete="off" type="text" placeholder="아이디" name="loginId" style="width: 250px; border-radius: 5px; outline-color: #ffc0cd;" />
            <button id="confirm" type="button" class="btn btn-success" style="margin-left: 10px; background-color: transparent; border: none; color: green; ">중복검사</button>
            <input type="hidden" id="check" value="no"/>
        </div>
        <div style="margin-bottom: 10px; font-size: 16px;">
            <input autocomplete="off" type="password" placeholder="비밀번호" name="loginPw" style="width: 350px; border-radius: 5px; outline-color: #ffc0cd;" />
        </div>
        <div style="margin-bottom: 10px; font-size: 16px;">
            <input autocomplete="off" type="password" placeholder="비밀번호체크" name="loginPwCheck" style="width: 350px; border-radius: 5px; outline-color: #ffc0cd;" />
        	<span id="passMatchMsg" class="pass-match"></span>
        </div>
        <div style="margin-bottom: 10px; font-size: 16px;">
            <input autocomplete="off" type="text" placeholder="이름" name="name" style="width: 350px; border-radius: 5px; outline-color: #ffc0cd;" />
        </div>
        <div style="margin-bottom: 10px; font-size: 16px;">
            <input autocomplete="off" type="text" placeholder="닉네임" name="nickname" style="width: 350px; border-radius: 5px; outline-color: #ffc0cd;" />
        </div>
        <div style="margin-bottom: 10px; font-size: 16px;">
            <input autocomplete="off" type="text" placeholder="전화번호" name="cellphoneNum" style="width: 350px; border-radius: 5px; outline-color: #ffc0cd;" />
        </div>
        <div style="margin-bottom: 10px; font-size: 16px;">
            <input autocomplete="off" type="text" placeholder="이메일" name="email" style="width: 350px; border-radius: 5px; outline-color: #ffc0cd;" />
        </div>
        <button type="submit" style="background-color: #CCCCCC; color: white; width: 350px; border-radius: 10px; padding: 0px;">회원가입</button>
    </form>
    <div style="margin-top: 20px; width: 350px; display: flex; justify-content: space-between;">
        <a href="login" style="text-decoration: none; color: green; font-size: 14px;">로그인</a>
    </div>
</div>

