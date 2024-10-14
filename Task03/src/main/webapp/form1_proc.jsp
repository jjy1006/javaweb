<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.*,java.util.*"%>
<html>
<head>
    <title>가입 정보 처리</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");
        String userid = request.getParameter("id");
        String password = request.getParameter("passwd");

        if (userid.equals("관리자") && password.equals("1234")) {
            response.sendRedirect("form1_success.jsp");
        } else {
            out.println("<h1>로그인 실패 - 가입 정보 출력</h1>");
            out.println("<table border='1'>");
            out.println("<tr><th>요청 파라미터 이름</th><th>요청 파라미터 값</th></tr>");
            
            Enumeration paramNames = request.getParameterNames();
            while (paramNames.hasMoreElements()) {
                String name = (String) paramNames.nextElement();
                String paramValue = request.getParameter(name);
                out.println("<tr><td>" + name + "</td><td>" + paramValue + "</td></tr>");
            }
            out.println("</table>");
        }
    %>
</body>
</html>
