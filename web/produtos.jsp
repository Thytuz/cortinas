<%@page import="models.FotoModel"%>
<%@page import="daos.FotoDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="daos.ProdutoDAO"%>
<%@page import="java.util.List"%>
<%@page import="models.ProdutoModel"%>
<%
    ProdutoDAO produtoDAO = new ProdutoDAO();
    FotoDAO fotoDAO = new FotoDAO();

    List<ProdutoModel> listaProdutos = produtoDAO.listaTodos();
    List<FotoModel> listaFotos = fotoDAO.listaTodos();

    request.setAttribute("listaProdutos", listaProdutos);
    request.setAttribute("listaFotos", listaFotos);
%>
<html>
    <!--header-->	
    <jsp:include page="templates/header.html"></jsp:include>
        <!--end header-->
        <body> 
        <jsp:include page="templates/menu.html"></jsp:include>
            <div class="product-model">	 
                <div class="container">
                    <!---728x90--->
                    <ol class="breadcrumb">
                        <li><a href="index.jsp">Home</a></li>
                        <li class="active">Produtos</li>
                    </ol>
                    <h2>Nossos Produtos</h2>

                    <div class="col-md-9 product-model-sec">
                    <c:forEach items="${listaProdutos}" var="produto">
                        <form action="./produtos" method="POST">
                            <input name="action" type="hidden" value="detalhar">
                            <input name="prodId" type="hidden" value="<c:out value="${produto.getProdId()}"/>">
                            <a href="detalheproduto.jsp"><div class="product-grid">
                                    <div class="more-product"><span> </span></div>						
                                    <div class="product-img b-link-stripe b-animate-go  thickbox">
                                        <c:forEach items="${listaFotos}" var="foto">
                                            <c:if test="${foto.getProdutoModel().getProdId() == produto.getProdId()}">
                                                <img src="<c:out value="${foto.getFotoSrc()}"/>" class="img-responsive" alt="">
                                            </c:if>
                                        </c:forEach>
                                        <div class="b-wrapper">
                                            <h4 class="b-animate b-from-left  b-delay03">							
                                                <button type="submit"><span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>Ver</button>
                                            </h4>
                                        </div>
                                    </div></a>						
                            <div class="product-info simpleCart_shelfItem">
                                <div class="product-info-cust prt_name">
                                    <h4><c:out value="${produto.getProdNome()}"/></h4>								
                                    <span class="item_price">R$<c:out value="${produto.getProdPreco()}"/></span>
                                    <input type="text" class="item_quantity" value="1" />
                                    <input type="button" class="item_add items" value="ADD">
                                    <div class="clearfix"> </div>
                                </div>												
                            </div>
                    </div>
                    </form>
                </c:forEach>
            </div>

            <div class="rsidebar span_1_of_left">
                <section  class="sky-form">
                    <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Preço</h4>
                    <ul class="dropdown-menu1">
                        <li>							               
                            <div id="slider-range"></div>							
                            <input disabled type="text" id="amount" style="border: 0; background: none; font-weight: NORMAL;   font-family: 'Dosis-Regular';" />
                        </li>			
                    </ul>
                </section>

                <section  class="sky-form">
                    <div class="product_right">
                        <h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Categoria</h4>
                        <c:forEach items="${listaProdutos}" var="produto">
                            <div class="tab1">
                                <ul class="place">								
                                    <li class="sort"><c:out value="${produto.getProdCategoria()}"/></li>
                                    <div class="clearfix"> </div>
                                </ul>
                            </div>						  
                        </c:forEach>
                </section>

                <section  class="sky-form">
                    <div class="product_right">
                        <h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Cor</h4>
                        <c:forEach items="${listaProdutos}" var="produto">
                            <div class="tab1">
                                <ul class="place">								
                                    <li class="sort"><c:out value="${produto.getProdCor()}"/></li>
                                    <div class="clearfix"> </div>
                                </ul>
                            </div>						  
                        </c:forEach>
                </section>

                <section  class="sky-form">
                    <div class="product_right">
                        <h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Marca</h4>
                        <c:forEach items="${listaProdutos}" var="produto">
                            <div class="tab1">
                                <ul class="place">								
                                    <li class="sort"><c:out value="${produto.getProdMarca()}"/></li>
                                    <div class="clearfix"> </div>
                                </ul>
                            </div>						  
                        </c:forEach>
                </section>


                <!---->
                <script type='text/javascript'>//<![CDATA[ 
                    $(window).load(function () {
                        $("#slider-range").slider({
                            range: true,
                            min: 0,
                            max: 100000,
                            values: [500, 100000],
                            slide: function (event, ui) {
                                $("#amount").val("$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ]);
                            }
                        });
                        $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

                    });//]]> 
                </script>
                <!---->

            </div>				 
        </div>
    </div>

    <!--footer-->
    <jsp:include page="templates/footer.html"></jsp:include>
    <!--end footer-->
</body>
</html>