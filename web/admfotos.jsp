<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <!--head-->	
    <jsp:include page="templates/header.html"></jsp:include>
        <!--end head-->
        <body>
        <c:forEach items="${listaFotos}" var="foto">
            <div style="display: inline-block;">
                <img style="margin: 5px; width: 100px; height: 100px;" src="images/${foto.getFotoSrc()}"/>
                <br>
                <a class="btn btn-warning btn-block" href="./fotos?cmd=deletar&fotoId=${foto.getFotoId()}">Deletar</a>
            </div>
        </c:forEach>    
        <br>
        <br>
        <form target="iframeFotos" action="./fotos" method="POST" enctype="multipart/form-data">
            <legend>Adicionar Imagem</legend>
            <input type="hidden" name="prodId" value="${prodId}">
            <input type="hidden" name="action" value="salvar">
            <input type="file" name="imagem">
            <br>
            <button type="submit" class="btn btn-primary">Salvar</button>
        </form>
    </body>
</html>
