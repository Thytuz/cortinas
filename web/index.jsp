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
<!DOCTYPE html>
<html>
    <!--header-->	
    <jsp:include page="templates/header.html"></jsp:include>
        <!--end header-->
        <body> 
            <script src="js/responsiveslides.min.js"></script>
            <script>
                $(function () {
                    $("#slider").responsiveSlides({
                        auto: true,
                        nav: true,
                        speed: 500,
                        namespace: "callbacks",
                        pager: false,
                    });
                });
            </script>
            <!--menu-->
        <jsp:include page="templates/menu.jsp"></jsp:include>
            <!--end menu-->
            <!---->	
            <div class="slider">
                <div class="callbacks_container">
                    <ul class="rslides" id="slider">
                        <li>
                            <div class="banner1">				  
                                <div class="banner-info">
                                    <h3>Soluções para todos os ambientes e estilos de vida</h3>
                                    <p>Venha ver de perto as novas tendências sobre decoração</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="banner2">
                                <div class="banner-info">
                                    <h3>Estilo, beleza e qualidade</h3>
                                    <p>Dê um upgrade nos ambientes de sua casa</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="banner3">
                                <div class="banner-info">
                                    <h3>Diferencial de qualidade e atendimento personalizado</h3>
                                    <p>Nós somos TOP, venha ser TOP com a gente</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!---->

            <div class="items">
                <div class="product-model">
                    <h2>Nossos Produtos</h2>
                    <div class="container">
                    <c:forEach items="${listaProdutos}" var="produto">
                        <form action="./produtos" method="POST">
                            <input name="action" type="hidden" value="detalhar">
                            <input name="prodId" type="hidden" value="<c:out value="${produto.getProdId()}"/>">
                            <div class="product-grid">
                                <div class="more-product"><span> </span></div>
                                <div class="product-img b-link-stripe b-animate-go thickbox">
                                    <c:forEach items="${listaFotos}" var="foto">
                                        <c:if test="${foto.getProdutoModel().getProdId() == produto.getProdId()}">
                                            <img src="<c:out value="images/${foto.getFotoSrc()}"/>" class="img-responsive" alt="">
                                        </c:if>
                                    </c:forEach>
                                    <div class="b-wrapper">
                                        <h4 class="b-animate b-from-left b-delay03">
                                            <button type="submit"><span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>Ver</button>
                                        </h4>
                                    </div>
                                </div>
                                <div class="product-info simpleCart_shelfItem">
                                    <div class="product-info-cust prt_name">
                                        <h4><c:out value="${produto.getProdNome()}"/></h4>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <span class="item_price">R$<c:out value="${produto.getProdPreco()}"/></span>
                                            </div>
                                            <div class="col-sm-3">
                                                <input type="text" class="item_quantity" value="1">
                                            </div>
                                            <div class="col-sm-2">
                                                <input type="button" class="item_add items" value="ADD">
                                            </div>
                                        </div>
                                    </div>												
                                </div>
                            </div>
                        </form>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!---->

        <jsp:include page="templates/subscribe.html"></jsp:include>
            <div class="footer">
                <div class="container">
                    <div class="footer-grids">
                        <div class="col-md-6 about-us">
                            <h3>Sobre nós</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at fringilla purus, a pellentesque ex. Sed et dignissim elit. Sed et ex a neque convallis convallis. Vestibulum urna odio, sagittis sit amet sem a, vulputate molestie nisl. Donec sit amet suscipit massa. Donec tempor elementum purus, quis rhoncus justo ultrices vitae.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!--footer-->
        <jsp:include page="templates/footer.html"></jsp:include>
        <!--end footer-->
    </body>
</html>
