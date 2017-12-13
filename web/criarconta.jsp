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
                                <input required name="email" type="email">
                                <h5>Telefone</h5>
                                <input class="telefone" name="telefone" type="text">
                                <h5>*Senha</h5>
                                <input required id="password" name="password" type="password">
                                <h5>*Confirme a Senha</h5>
                                <input required id="confirm_password" name="passwordOk" type="password">
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
                                <input required type="email" name="email">
                                <h5>*Senha</h5>
                                <input required type="password" name="senha">
                                <input type="hidden" name="action" value="logar">
                                <input type="submit" value="Login">	
                                <a class="acount-btn" href="criarconta.jsp">CRIE SUA CONTA</a>
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
        <script src="http://digitalbush.com/wp-content/uploads/2014/10/jquery.maskedinput.js"></script>

        <script>
            var password = document.getElementById("password")
                    , confirm_password = document.getElementById("confirm_password");

            function validatePassword() {
                if (password.value != confirm_password.value) {
                    confirm_password.setCustomValidity("Passwords Don't Match");
                } else {
                    confirm_password.setCustomValidity('');
                }
            }

            password.onchange = validatePassword;
            confirm_password.onkeyup = validatePassword;

            $("input.telefone").mask("(99) 9999-9999?9").focusout(function (event) {
                var target, phone, element;
                target = (event.currentTarget) ? event.currentTarget : event.srcElement;
                phone = target.value.replace(/\D/g, '');
                element = $(target);
                element.unmask();
                if (phone.length > 10) {
                    element.mask("(99) 99999-999?9");
                } else {
                    element.mask("(99) 9999-9999?9");
                }
            });
        </script>
    </body>
</html>