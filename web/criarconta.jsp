<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <!--header-->	
    <jsp:include page="templates/header.html"></jsp:include>
        <!--end header-->
        <body>
            <!--menu-->
        <jsp:include page="templates/menu.html"></jsp:include>
            <!--end menu-->	
            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a></li>
                    <li class="active">Conta</li>
                </ol>
                <div class="registration">
                    <div class="registration_left">
                        <h2>Novo usuário? <span> Cria uma conta! </span></h2>
                        <!-- [if IE] 
                               < link rel='stylesheet' type='text/css' href='ie.css'/>  
                        [endif] -->  

                        <!-- [if lt IE 7]>  
                               < link rel='stylesheet' type='text/css' href='ie6.css'/>  
                        <! [endif] -->  
                        <script>
                            (function () {

                                // Create input element for testing
                                var inputs = document.createElement('input');

                                // Create the supports object
                                var supports = {};

                                supports.autofocus = 'autofocus' in inputs;
                                supports.required = 'required' in inputs;
                                supports.placeholder = 'placeholder' in inputs;

                                // Fallback for autofocus attribute
                                if (!supports.autofocus) {

                                }

                                // Fallback for required attribute
                                if (!supports.required) {

                                }

                                // Fallback for placeholder attribute
                                if (!supports.placeholder) {

                                }

                                // Change text inside send button on submit
                                var send = document.getElementById('register-submit');
                                if (send) {
                                    send.onclick = function () {
                                        this.innerHTML = '...Sending';
                                    }
                                }

                            })();
                        </script>
                        <div class="registration_form">
                            <!-- Form -->
                            <form action="./clientes" method="POST">
                                <div>
                                    <label>
                                        <input required name="nome" placeholder="Nome" type="text" tabindex="1">
                                    </label>
                                </div>
                                <div>
                                    <label>
                                        <input required name="email" placeholder="E-mail" type="email" tabindex="3">
                                    </label>
                                </div>
                                <div>
                                    <label>
                                        <input name="telefone" placeholder="Telefone" type="text" tabindex="3">
                                    </label>
                                </div>					
                                <div>
                                    <label>
                                        <input required name="password" placeholder="Senha" type="password" tabindex="4">
                                    </label>
                                </div>						
                                <div>
                                    <label>
                                        <input required name="passwordOk" placeholder="Confirme senha" type="password" tabindex="4">
                                    </label>
                                </div>	
                                <div class="sky-form">
                                    <label class="checkbox">
                                        <input type="checkbox" name="checkbox" ><i></i>Eu li e concordo com os <a class="terms" href="#"> termos de uso</a>
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
                    <div class="registration_left">
                        <h2>Já possui uma conta? <span> Faça login! </span></h2>
                        <div class="registration_form">
                            <!-- Form -->
                            <form>
                                <div>
                                    <label>
                                        <input placeholder="Email" type="email" tabindex="3" required>
                                    </label>
                                </div>
                                <div>
                                    <label>
                                        <input placeholder="Senha" type="password" tabindex="4" required>
                                    </label>
                                </div>						
                                <div>
                                    <input type="submit" value="Entrar">
                                </div>
                                <div class="forget">
                                    <a href="#">Esqueci minha senha!</a>
                                </div>
                            </form>
                            <!-- /Form -->
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!--footer-->
        <jsp:include page="templates/footer.html"></jsp:include>
        <!--end footer-->
    </body>
</html>