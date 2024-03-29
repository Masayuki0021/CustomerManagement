<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean class="user.UserBean" id="user" scope="session" />
<jsp:useBean class="customer.CustomerBean" id="customer" scope="session" />
<!doctype html>
<html>
<head>
<title>顧客管理</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/style.css">
</head>
<body>
    <h1>顧客管理</h1>
    <div class="main">
        <h2>入力の確認</h2>
        <table>

                <tr>
                    <td class="title">氏名</td>
                    <td><%=customer.getName() %></td>
                </tr>
                <tr>
                     <td class="title">郵便番号</td>
                    <td><%=customer.getZip() %></td>
                </tr>
                <tr>
                    <td class="title">住所1</td>
                    <td><%=customer.getAddress1() %></td>
                </tr>
                <tr>
                    <td class="title">住所2</td>
                    <td> <%if (customer.getAddress2() == null) {%><%=""%><%}else{%><%=customer.getAddress2()%><%}%></td>
                </tr>
                <TR>
                    <td class="title">TEL</td>
                    <td><%=customer.getTel() %></td>
                </TR>
                <TR>
                    <td class="title">FAX</td>
                    <td> <%if (customer.getFax() == null) {%><%=""%><%}else{%><%=customer.getFax()%><%}%></td>
                </TR>
                <TR>
                    <td class="title">E-mail</td>
                    <td><%=customer.getEmail() %></td>
                </TR>
            </table>
            <form name="form1" action="CustomerServlet" method="post"
            onsubmit="return funcConfirm()">
            <p>
                <button name="state" value="add">OK</button>
                <input type="button" value="戻る" onclick="history.back()">
            </p>
        </form>

    </div>
</body>
</html>
