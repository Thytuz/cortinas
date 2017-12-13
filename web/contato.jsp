<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <!--header-->	
    <jsp:include page="templates/header.html"></jsp:include>
        <!--end header-->
        <body>
            <!--menu-->
        <jsp:include page="templates/menu.jsp"></jsp:include>
            <!--end menu-->
            <div class="clearfix"> </div>
            <!---->			 
            <div class="contact">
                <!---728x90--->
                <div class="container">
                    <ol class="breadcrumb">
                        <li><a href="index.jsp">Home</a></li>
                        <li class="active">Contato</li>
                    </ol>
                    <!--start contact-->
                    <div class="section group">				
                        <div class="col-md-6 span_1_of_3">
                            <div class="contact_info">
                                <h4>Encontre-nos</h4>
                                <!---728x90--->
                                <div class="map">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3822.204232318143!2d-49.26516578513365!3d-16.666660388514323!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x935ef3c2b2aaaa43%3A0xf1c15c99315d0474!2sDiamante+cortinas!5e0!3m2!1spt-BR!2sbr!4v1510832319863" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                                </div>
                            </div>
                            <div class="company_address">
                                <h4>Informações da Empresa</h4>
                                <p>Diamante Cortinas</p>
                                <p>R. 74, 525 - St. Central</p>
                                <p>Goiânia - GO, 74045-020</p>
                                <p>Brasil</p>
                                <p>Telefone:(62) 98404-7763</p>
                                <p>Email: <a href="mailto:diamantecortinas@hotmail.com">diamantecortinas@hotmail.com</a></p>
                                <p>Nos siga: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
                            </div>
                        </div>				
                        <div class="registration">
                            <div class="registration_left">
                                <h2>Contate-nos</h2>
                                <div class="registration_form log contact-form">
                                    <form>
                                        <h5>*Nome</h5>
                                        <input required name="userName" type="text" class="textbox">
                                        <h5>*Email</h5>
                                        <input required name="userEmail"type="email" class="textbox">

                                        <h5>Telefone</h5>
                                        <input class="telefone" name="userPhone" type="text" class="textbox">

                                        <h5>*Mensagem</h5>
                                        <span><textarea required name="userMsg"></textarea></span>
                                        <div>
                                            <span><input type="submit" class="mybutton" value="Enviar"></span>
                                        </div>
                                    </form>
                                </div>
                            </div>				
                        </div>
                    </div>
                </div>
            </div>
            <!--footer-->
        <jsp:include page="templates/footer.html"></jsp:include>
        <!--end footer-->
        <script src="http://digitalbush.com/wp-content/uploads/2014/10/jquery.maskedinput.js"></script>
        <script>
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