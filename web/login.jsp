<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <!--header-->	
    <jsp:include page="templates/header.html"></jsp:include>
        <!--end header-->
        <body>
            <!--menu-->
        <jsp:include page="templates/menu.html"></jsp:include>
            <!--end menu-->
            <div class="login_sec">
                <div class="container">
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                        <li class="active">Login</li>
                    </ol>
                    <h2>Login</h2>
                    <div class="col-md-6 log">			 
                        <form>
                            <div>
                                <label>
                                    <input placeholder="Nome" type="text" tabindex="1">
                                </label>
                            </div>
                            <div>
                                <label>
                                    <input placeholder="Senha" type="password" tabindex="4">
                                </label>
                            </div>				
                            <input type="submit" value="Login">	
                            <a class="acount-btn" href="criarconta.jsp">Cria sua conta</a>
                        </form>
                        <a href="#">Esqueci minha senha!</a>

                    </div>	

                    <div class="clearfix"></div>
                </div>
            </div>
            <!--footer-->
        <jsp:include page="templates/footer.html"></jsp:include>
        <!--end footer-->
    </body>
</html>