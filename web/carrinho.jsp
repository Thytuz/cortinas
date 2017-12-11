<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <!--header-->	
    <jsp:include page="templates/header.html"></jsp:include>
        <!--end header-->
        <body> 
            <!--menu-->
        <jsp:include page="templates/menu.html"></jsp:include>
        <!--end menu-->

        <!-- check out -->
        <div class="container">
            <div class="check-sec">	 
                <div class="col-md-3 cart-total">
                    <a class="continue" href="produtos.jsp">Continue Comprando</a>
                    <div class="price-details">
                        <h3>Price Details</h3>
                        <span>Total</span>
                        <span class="total1">6200.00</span>
                        <span>Taxas de Entrega</span>
                        <span class="total1">150.00</span>
                        <div class="clearfix"></div>				 
                    </div>	
                    <ul class="total_price">
                        <li class="last_price"> <h4>TOTAL</h4></li>	
                        <li class="last_price"><span>6150.00</span></li>			   
                    </ul> 
                    <div class="clearfix"></div>
                    <div class="clearfix"></div>
                    <a class="order" href="#">Finalizar Compra</a>
                </div>
                <div class="col-md-9 cart-items">
                    <h1>Carrinho de Compras (2)</h1>
                    <script>$(document).ready(function (c) {
                            $('.close1').on('click', function (c) {
                                $('.cart-header').fadeOut('slow', function (c) {
                                    $('.cart-header').remove();
                                });
                            });
                        });
                    </script>
                    <div class="cart-header">
                        <div class="close1"> </div>
                        <div class="cart-sec simpleCart_shelfItem">
                            <div class="cart-item cyc">
                                <img src="https://images-shoptime.b2w.io/produtos/01/00/sku/14420/6/14420663_1GG.jpg" class="img-responsive" alt=""/>
                            </div>
                            <div class="cart-item-info">
                                <h3><a href="single.html">CORTINA PERSIANA LUXO MARROM</a><span>Modelo Nº: RL-5511S</span></h3>
                                <ul class="qty">
                                    <li><p>Tamanho : 3x2</p></li>
                                    <li><p>Qtd : 1</p></li>
                                </ul>
                                <div class="delivery">
                                    <p>Taxa de Serviço : R$100.00</p>
                                    <span>Entregue em 2-3 dias úteis</span>
                                    <div class="clearfix"></div>
                                </div>								
                            </div>
                            <div class="clearfix"></div>

                        </div>
                    </div>
                    <script>$(document).ready(function (c) {
                            $('.close2').on('click', function (c) {
                                $('.cart-header2').fadeOut('slow', function (c) {
                                    $('.cart-header2').remove();
                                });
                            });
                        });
                    </script>
                    <div class="cart-header2">
                        <div class="close2"> </div>
                        <div class="cart-sec simpleCart_shelfItem">
                            <div class="cart-item cyc">
                                <img src="https://carrinho.extra.com.br/decoracao/Cortinas/cortinaSala/5251251/870087363/cortina-para-janela-barcelona-300x-250-5251307.jpg" class="img-responsive" alt=""/>
                            </div>
                            <div class="cart-item-info">
                                <h3><a href="single.html">CORTINA PARA JANELA VERMELHA</a><span>Modelo Nº: SL-3578</span></h3>
                                <ul class="qty">
                                    <li><p>Tamanho : 3x2</p></li>
                                    <li><p>Qtd : 1</p></li>
                                </ul>
                                <div class="delivery">
                                    <p>Taxa de Serviço : R$100.00</p>
                                    <span>Entregue em 2-3 dias úteis</span>
                                    <div class="clearfix"></div>
                                </div>							
                            </div>
                            <div class="clearfix"></div>					
                        </div>
                    </div>		
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- //check out -->

    </body>
</html>