<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%
        HttpSession sessao = request.getSession();
        Integer clieId = (Integer) sessao.getAttribute("clieId");
        request.setAttribute("clieId", clieId);
    %>
    <!--header-->	
    <jsp:include page="templates/header.html"></jsp:include>
        <!--end header-->
        <body>
            <!--menu-->
        <jsp:include page="templates/menu.jsp"></jsp:include>
            <!--end menu-->	
            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a></li>
                    <li class="active">Conta</li>
                </ol>
                <div class="registration">
                    <div class="registration_left">
                        <h2>Novo usuário? <span> Crie uma conta! </span></h2>
                        <div class="registration_form log">
                            <!-- Form -->
                            <form action="./clientes" method="POST">
                                <h5>*Nome</h5>
                                <input required name="nome" type="text">
                                <h5>*Email</h5>
                                <input required name="email" type="text">
                                <h5>Telefone</h5>
                                <input name="telefone" type="text">
                                <h5>*Senha</h5>
                                <input required name="password" type="password">
                                <h5>*Confirme a Senha</h5>
                                <input required name="passwordOk" type="password">
                                <div class="sky-form">
                                    <label class="checkbox">
                                        <input required type="checkbox" name="checkbox" ><i></i>Eu li e concordo com os <a class="terms" href="#"> termos de uso</a>
                                    </label>
                                </div>
                                <div>
                                    <input type="submit" value="Criar conta" id="register-submit">
                                </div>
                                <input type="hidden" name="action" value="criarconta">
                            </form>
                            <!-- /Form -->
                        </div>
                    </div>
                <c:if test="${clieId == null}">
                    <div class="registration_left">
                        <h2>Já possui uma conta? <span> Faça login! </span></h2>
                        <div class="registration_form log">
                            <!-- Form -->
                            <form action="./clientes" method="POST">
                                <h5>*Email</h5>
                                <input required type="text" name="email">
                                <h5>*Senha</h5>
                                <input required type="password" name="senha">
                                <input type="hidden" name="action" value="logar">
                                <input type="submit" value="Login">	
                                <a class="acount-btn" href="criarconta.jsp">Crie sua conta</a>
                            </form>
                            <!-- /Form -->
                        </div>
                    </div>
                </c:if>
                <div class="clearfix"></div>
            </div>
        </div>
        <!--footer-->
        <jsp:include page="templates/footer.html"></jsp:include>
        <!--end footer-->
    </body>
</html>