<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="models.ProdutoModel"%>
<%@page import="java.util.List"%>
<%@page import="daos.ProdutoDAO"%>
<%
    ProdutoDAO produtoDAO = new ProdutoDAO();
    HttpSession sessao = request.getSession();
    Integer clieId = (Integer) sessao.getAttribute("clieId");
    String clieNome = (String) sessao.getAttribute("clieNome");
    request.setAttribute("clieId", clieId);
    request.setAttribute("clieNome", clieNome);

    List<ProdutoModel> listaCategorias = produtoDAO.listaCategorias();
    List<ProdutoModel> listaCores = produtoDAO.listaCores();
    List<ProdutoModel> listaMarcas = produtoDAO.listaMarcas();
    request.setAttribute("listaCategorias", listaCategorias);
    request.setAttribute("listaCores", listaCores);
    request.setAttribute("listaMarcas", listaMarcas);
%>

<div class="header-top">
    <div class="header-bottom">			
        <div class="logo">
            <h1><a href="index.jsp">Diamante Cortinas</a></h1>
        </div>
        <!---->		 
        <div class="top-nav">
            <ul class="memenu skyblue"><li class="grid"><a href="index.jsp">Home</a></li>
                <li class="grid"><a href="./produtos.jsp">Produtos</a>
                    <div class="mepanel">
                        <div class="row">
                            <div class="col1 me-one">
                                <h4>Comprar</h4>
                                <ul>
                                    <c:forEach items="${listaCategorias}" var="categoria">
                                        <li><a href="./produtos.jsp"><c:out value="${categoria.getProdCategoria()}"/></a></li>
                                        </c:forEach>
                                </ul>
                            </div>
                            <div class="col1 me-one">
                                <h4>Cor</h4>
                                <ul>
                                    <c:forEach items="${listaCores}" var="cor">
                                        <li><a href="./produtos.jsp"><c:out value="${cor.getProdCor()}"/></a></li>
                                        </c:forEach>
                                </ul>	
                            </div>
                            <div class="col1 me-one">
                                <h4>Marca</h4>
                                <ul>
                                    <c:forEach items="${listaMarcas}" var="marca">
                                        <li><a href="./produtos.jsp"><c:out value="${marca.getProdMarca()}"/></a></li>
                                        </c:forEach>
                                </ul>	
                            </div>
                        </div>
                    </div>
                </li>
                <li class="grid"><a href="contato.jsp">Contato</a></li>
                <li class="grid"><a href="criarconta.jsp">Criar Conta</a></li>
                    <c:if test="${clieId == null}">
                    <li class="grid"><a href="login.jsp">Login</a></li>
                    </c:if>
                    <c:if test="${clieId != null}">
                    <li class="grid"><a href="./clientes?action=sair">Sair</a></li>
                    </c:if>
            </ul>				
        </div>
        <!---->

        <div class="cart box_1">
            <a href="carrinho.jsp">
                <div class="total">
                    <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div>
                <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
            </a>
            <p><a href="javascript:;" class="simpleCart_empty">Esvaziar carrinho</a></p>
            <div class="clearfix"> </div>
        </div>

        <div class="clearfix"> </div>
        <!---->			 
    </div>
    <div class="clearfix"> </div>
</div>