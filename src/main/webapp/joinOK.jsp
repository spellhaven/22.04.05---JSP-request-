<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 성공</title>
</head>
<body>

	<!-- 밑에 주황 영역이 '스크립틀릿'이야. (JSP 교과서 p.102 참조) 분명 HTML 문서인데 갑자기 자바를 쓸 수 있다. -->
	<!-- 이클립스 Perspectives - Snippets에 가면 쉽게 JSP 스크립트 태그(Scriptlet, Comment, Directive, Declaration, Expression)을 넣을 수 있다 ^^ -->
	
	<% 
		// 와 정말 이 안은 자바 영역이라 자바 식으로 코멘트해도 되네?
	
		request.setCharacterEncoding("UTF-8"); //이러면 한글 안 깨진다. ^^
				
		// request가 가져온 파라미터들을 쏙쏙 빼서 각각의 String 개체에 넣은 후 출력해 보자.
		String pid =  request.getParameter("id"); //이름
		String ppw = request.getParameter("pw"); //비밀번호
		String pgender = request.getParameter("gender"); //성별
		String[] phobby = request.getParameterValues("hobby"); //취미가 배열로 온다. (여러 개가 오니까 values로 복수형이다.) 큲 개 옪 다 ㄷㄷ ㄷ. . .
		String pintro = request.getParameter("intro"); //자기소개
		
//		System.out.print(pid);
//		System.out.print(ppw);
		
		// 스크립틀릿 안은 자바지만, 이 내용은 웹으로 가니까 또 html이 간다. 그래서 println 줄바꿈은 안 먹히고 <br>가 먹힌다.		
		/*
		out.println(pid + "님 반갑습니다.<br>");
		out.println("비밀번호는 " + ppw + "입니다.<br>");	
		out.println("느그의 성별은 " + pgender + "자입니다.<br>");		
		
		out.println("당신의 취미는 :");		
		
		if (phobby != null) {
			for (int i = 0; i < phobby.length ; i++) {
				out.println(" " + phobby[i]);
			}
		} else { // 이 처리를 않 해 주면 취미 체크박스를 아무것도 선택하지 않았을 때 phobby.length가 null이 되니까(0이 되니까? null이 되니까??) 에러 난다. ㅋ
			out.println("선택하지 않으셨습니다.");
		}
		
		out.println("<br>");
		out.println("자기소개를 이렇게 쓰셨군요: " + pintro);
		*/
	%>
	
	
	
	<!-- out.println은 위에서 보다시피 매우 번거로우니 그 대신 표현문(Expression)을 쓸 수 있다.(교과서 p.102 참조) 적용해 보자.. -->
	<h2><%= pid %></h2> 님 반갑습니다. <br>
	느그의 비밀번호는 <%= ppw %>입니다. <br>
	느그의 성별은 <%= pgender %>자입니다.<br>
	
	<!-- 안타깝게도 취미는 (Java로) for문을 돌려야 해서 스크립틀릿을 써야 한다. 교수님께서 안 그래도 되는 방법 알려 주신다지만
	그건 한참 나중에. (심지어 책에도 없는 내용이래.) 그래서 지금 쪼렙인 우리는 어쩔 수 없이 expression을 scriptlet과 섞어야 한다. -->
	느그의 취미는:
	<%  
		if (phobby != null) {
			for (int i = 0; i < phobby.length ; i++) {
				out.println(" " + phobby[i]);
			}
		} else { 
			out.println("선택하지 않으셨습니다.");
		}	
	%>
	<br>
	
	첫사랑 얘기해봐... 아니 자기소개해봐: <%= pintro %>

</body>
</html>




























