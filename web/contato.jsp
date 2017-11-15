<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <!--header-->	
    <jsp:include page="templates/header.html"></jsp:include>
        <!--end header-->
        <body>
            <!--menu-->
        <jsp:include page="templates/menu.html"></jsp:include>
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
                    <h3>Contate-nos</h3>
                    <div class="section group">				
                        <div class="col-md-6 span_1_of_3">
                            <div class="contact_info">
                                <h4>Encontre-nos</h4>
                                <!---728x90--->
                                <div class="map">
                                    <iframe src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe>
                                </div>
                            </div>
                            <div class="company_address">
                                <h4>Informações da Empresa</h4>
                                <p>500 Lorem Ipsum Dolor Sit,</p>
                                <p>22-56-2-9 Sit Amet, Lorem,</p>
                                <p>USA</p>
                                <p>Phone:(00) 222 666 444</p>
                                <p>Fax: (000) 000 00 00 0</p>
                                <p>Email: <a href="mailto:info@example.com">info@mycompany.com</a></p>
                                <p>Follow on: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
                            </div>
                        </div>				
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
                                        <span><label>Mensagem</label></span>
                                        <span><textarea name="userMsg"> </textarea></span>
                                    </div>
                                    <div>
                                        <span><input type="submit" class="mybutton" value="Enviar"></span>
                                    </div>
                                </form>

                            </div>
                        </div>				
                    </div>
                </div>
            </div>
            <!--footer-->
        <jsp:include page="templates/footer.html"></jsp:include>
        <!--end footer-->
    </body>
</html>