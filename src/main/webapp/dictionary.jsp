<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/1/2024
  Time: 2:31 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Từ điển đơn giản</title>
</head>
<body>
<%!
    Map<String, String> ten = new HashMap<>();
%>
<%
    ten.put("helo", "chao xìn");
    ten.put("how", "thế nào");
    ten.put("bock", "văn vở");
    ten.put("computer", "tính máy");
    String tim = request.getParameter("tim");
    String hien = ten.get(tim);
    if (hien != null){
        out.println("từ" +tim);
        out.println("kết quả" + hien);
    }else {
        out.println("Không tìm thấy");
    }
%>
</body>
</html>
