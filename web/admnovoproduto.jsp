<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <!--head-->	
    <jsp:include page="templates/header.html"></jsp:include>
        <!--end head-->

        <body>

            <!--header-->	
        <jsp:include page="templates/admmenu.html"></jsp:include>
            <!--end header-->
        <c:if test="${usuaId == null}">
        <jsp:include page="templates/admmodallogin.jsp"></jsp:include>

        </c:if>
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="admprincipal.jsp">Home</a></li>
                <li><a href="admprodutos.jsp">Produtos</a></li>
                <li class="active">Novo Produto</li>
            </ol>

        <%
            String mensagem = (String) request.getAttribute("mensagem");
            if (mensagem != null) {
                out.println(mensagem);
            }
        %>
        <div class="registration">
            <div class="registration_left">
                <h2>Adicionar novo produto</h2>
                <div class="registration_form log contact-form">
                    <!-- Form -->
                    <form action="./produtos" method="POST">
                        <h5>*Nome</h5>
                        <input required name="prodNome" type="text">
                        <h5>*Categoria</h5>
                        <input required name="prodCategoria" type="text">
                        <h5>*Cor</h5>
                        <input required name="prodCor" type="text">
                        <h5>*Marca</h5>
                        <input required name="prodMarca" type="text">
                        <h5>*Preço</h5>
                        <input required name="prodPreco" type="text">
                        <h5>*Tamanho</h5>
                        <input required name="prodTamanho" type="text">
                        <h5>*Material</h5>
                        <input required name="prodMaterial" type="text">
                        <h5>*Descrição</h5>
                        <textarea required name="prodDescricao" type="text"></textarea>
                        <br>
                        <div>
                            <input type="submit" value="Adicionar" id="register-submit">
                        </div>
                        <input type="hidden" name="action" value="adicionarnovoproduto">
                    </form>
                    <!-- /Form -->
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <script src="js/msgjs.js"></script>
</body>
</html>