<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <!--header-->	
    <jsp:include page="templates/header.html"></jsp:include>
        <!--end header-->
        <body>
            <!--menu-->
        <jsp:include page="templates/menu.jsp"></jsp:include>
            <!--end menu-->
            <div class="login_sec">
                <div class="container">
                    <ol class="breadcrumb">
                        <li><a href="index.jsp">Home</a></li>
                        <li class="active">Login</li>
                    </ol>
                <%
                    String mensagem = (String) request.getAttribute("mensagem");
                    if (mensagem != null) {
                        out.println(mensagem);
                    }
                %>
                <h2>Login</h2>
                <div class="col-md-6 log">			 
                    <form action="./clientes" method="POST">
                        <h5>*Email</h5>
                        <input required type="text" name="email">
                        <h5>*Senha</h5>
                        <input required type="password" name="senha">
                        <input type="hidden" name="action" value="logar">
                        <input type="submit" value="Login">	
                        <a class="acount-btn" href="criarconta.jsp">Crie sua conta</a>
                    </form>
                    <a href="#">Esqueci minha senha!</a>

                </div>	

                <div class="clearfix"></div>
            </div>
        </div>
        <!--footer-->
        <jsp:include page="templates/footer.html"></jsp:include>
        <!--end footer-->
        <script src="js/msgjs.js"></script>

    </body>
</html>