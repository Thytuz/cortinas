<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!--header-->	
    <jsp:include page="templates/header.html"></jsp:include>
        <!--end header-->
        <body>
            <!--menu-->
        <jsp:include page="templates/menu.html"></jsp:include>
            <!--end menu-->
            <div class="clearfix"> </div>
            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a></li>
                    <li class="active">Criar conta</li>
                </ol>
                <div class="col-md-6 span_2_of_3">
                    <div class="contact-form">
                        <form>
                            <div>
                                <span><label>Nome</label></span>
                                <span><input name="userName" type="text" class="textbox"></span>
                            </div>
                            <div>
                                <span><label>E-mail</label></span>
                                <span><input name="userEmail" type="text" class="textbox"></span>
                            </div>
                            <div>
                                <span><label>Telefone</label></span>
                                <span><input name="userPhone" type="text" class="textbox"></span>
                            </div>
                            <div>
                                <span><label>Senha</label></span>
                                <span><input name="userPswd" type="password" class="textbox"></span>
                            </div>

                            <div>
                                <span><input type="submit" class="mybutton" value="Cadastre-se"></span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>		
        <jsp:include page="templates/footer.html"></jsp:include>

    </body>
</html>
