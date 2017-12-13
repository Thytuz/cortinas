<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <%
        HttpSession sessao = request.getSession();
        Integer usuaId = (Integer) (sessao.getAttribute("usuaId"));
        request.setAttribute("usuaId", usuaId);
        String mensagem = (String) request.getAttribute("mensagem");
    %>

    <body>
        <!--head-->	
        <jsp:include page="templates/header.html"></jsp:include>
            <!--end head-->

        <body>

            <!--header-->	
        <jsp:include page="templates/admmenu.html"></jsp:include>
            <!--end header-->

        <c:if test="${usuaId == null}">
            <jsp:include page="templates/admmodallogin.jsp"></jsp:include>

        </c:if>

        <div class="container">
            <div class="row">
                <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
                    <%  if (mensagem != null) {
                            out.println(mensagem);
                        }
                    %>
                    <h1>Painel Administrativo</h1>
                    <h3>Gerencie seu E-Commerce com as opções acima.</h3>
                </main>
            </div>
        </div>
        <script src="js/msgjs.js"></script>
    </body>
</html>
