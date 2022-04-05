<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
	
	<script type = "text/javascript"> // 지금부터 JS가 나올 거야. 하는 얘기다.
		function checkForm()
		{
			if(document.joinForm.id.value == "") {
				alert("아이디는 필수 입력 사항입니다. ㅋ");
				document.joinForm.id.focus();
				return false; // if문에 걸렸다면(필수 입력 사항을 않입력했다면) false가 리턴되어서 계속 폼에 있어야지, 안 그러면 form 값이 어떤 식으로든 request에 전달되기 때문이다.
			}
			
			else if(document.joinForm.pw.value == "") {
				alert("비밀번호는 필수 입력 사항입니다. ㅋ");
				document.joinForm.pw.focus();
				return false;
			}				
			else
				return true;
		}
	</script>
	
	<title>폼만들기연습</title>

</head>
<body>
	<h2>회원가입</h2>	
	<hr>
		<form name = "joinForm" action = "joinOK.jsp" method ="post" onsubmit="return checkForm()">
		<!-- form action = "FormExJava" method ="get"--> <!-- 서블릿을 실행할 땐 확장자 안 써 줘도 된다. -->
			이름: <input type = "text" name = "id" size = "10"> <br><br>
			비밀번호: <input type = "password" name = "pw" size = "10"> <br><br>
			
			<!-- hidden이라는 놈이 있다. 고객이 마음대로 못 바꾸게 값을 숨겨서 전달하는 놈이다.
			그 외에도 hidden 아니고, value를 정했을 때 쓰는 readonly라는 것도 있었다.
			고객이 읽을 수는 있지만 그 값을 바꾸지는 못하게... 뭐 이런 태그들이 있다 ^^-->
			<!-- 비밀번호: <input type = "hidden" name = "pw" size = "10" value = "12345"> <br><br> -->
			
			성별: <input type = "radio" name = "gender" value = "여">떡볶이 <input type = "radio" name = "gender" value = "남">제육볶음 <br><br>
			<!--같은 질문에 대한 각각의 라디오 버튼(답변)들은 변수 이름을 같게 해 줘야 돼. 그래야 같은 값에 대한~ 답 1. 오알 답 2. 뭐 이런 식으로 값이 감. 잊지마 ㅋ.-->
			
			취미: <input type = "checkbox" name = "hobby" value = "영화감상">영화감상
			<input type = "checkbox" name = "hobby" value = "독서">독서
			<input type = "checkbox" name = "hobby" value = "운동">운동 <br><br>
			
			
			자기소개:<br>
			<textarea rows="10" cols="30" name = "intro">50자 이상으로 작성해 봐.</textarea> <br><br>
			
			<hr>
			<input type = "submit" value = "가입하기"> &nbsp;&nbsp;&nbsp;&nbsp;
			<input type = "reset" value = "취소하기">		
		</form>		
</body>
</html>



















