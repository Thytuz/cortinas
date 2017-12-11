<%@page import="java.util.List"%>
<%@page import="models.ProdutoModel"%>
<%@page import="models.FotoModel"%>
<%@page import="daos.FotoDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    FotoDAO fotoDAO = new FotoDAO();
    ProdutoModel produtoModel = (ProdutoModel) request.getAttribute("produtoModel");
    List<FotoModel> listaFotos = fotoDAO.buscaFotosPorIdProduto(produtoModel.getProdId());
    request.setAttribute("listaFotos", listaFotos);
%>
<html>
    <!--header-->	
    <jsp:include page="templates/header.html"></jsp:include>
        <!--end header-->
        <body> 
            <!--menu-->
        <jsp:include page="templates/menu.jsp"></jsp:include>
            <!--end menu-->
            <div class="product">
                <div class="container">				
                    <div class="product-price1">
                        <div class="top-sing">
                            <div class="col-md-7 single-top">	
                                <div class="flexslider">
                                    <ul class="slides">
                                    <c:forEach items="${listaFotos}" var="foto">
                                        <li data-thumb="<c:out value="${foto.getFotoSrc()}"/>">
                                            <div class="thumb-image"> <img src="<c:out value="${foto.getFotoSrc()}"/>" data-imagezoom="true" class="img-responsive" alt=""/> </div>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>					 					 
                            <script src="js/imagezoom.js"></script>
                            <script defer src="js/jquery.flexslider.js"></script>
                            <script>
                                // Can also be used with $(document).ready()
                                $(window).load(function () {
                                    $('.flexslider').flexslider({
                                        animation: "slide",
                                        controlNav: "thumbnails"
                                    });
                                });
                            </script>

                        </div>	
                        <div class="col-md-5 single-top-in simpleCart_shelfItem">
                            <div class="single-para ">
                                <h4><c:out value="${produtoModel.getProdNome()}"/> </h4>							
                                <h5 class="item_price">R$ <c:out value="${produtoModel.getProdPreco()}"/></h5>							
                                <p class="para"><c:out value="${produtoModel.getProdDescricao()}"/></p>
                                <div class="prdt-info-grid">
                                    <ul>
                                        <li>- Marca : <c:out value="${produtoModel.getProdMarca()}"/></li>
                                        <li>- Tamanho : <c:out value="${produtoModel.getProdTamanho()}"/></li>
                                        <li>- Cor : <c:out value="${produtoModel.getProdCor()}"/></li>
                                        <li>- Material : <c:out value="${produtoModel.getProdMaterial()}"/></li>
                                    </ul>
                                </div>

                                <a href="#" class="add-cart item_add">Adicionar ao Carrinho</a>							
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>

            </div>
        </div>
        <!--footer-->
        <jsp:include page="templates/footer.html"></jsp:include>
        <!--end footer-->
    </body>
</html>