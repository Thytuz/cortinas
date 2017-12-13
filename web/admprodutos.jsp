<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        HttpSession sessao = request.getSession();
        Integer usuaId = (Integer) (sessao.getAttribute("usuaId"));
        request.setAttribute("usuaId", usuaId);
        String mensagem = (String) request.getAttribute("mensagem");
    %>

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
                <li class="active">Produtos</li>
            </ol>
            <%
                if (mensagem != null) {
                    out.println(mensagem);
                }
            %>
            <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
                <div>
                    <a href="admnovoproduto.jsp" class="btn btn-large btn-info">Adicionar novo produto</a>
                </div>
                <h2>Produtos</h2>
                <div class="table-responsive">
                    <table class="table table-striped table-bordered" id="tabela-produtos">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Categoria</th>
                                <th>Nome</th>
                                <th>Cor</th>
                                <th>Marca</th>
                                <th>Preço</th>
                                <th>Foto</th>
                                <th>Tamanho</th>
                                <th>Material</th>
                                <th>Descrição</th>
                                <th class="tabledit-toolbar-column">Ação</th>
                            </tr>
                        </thead>
                        <tbody id="tbody">     
                        </tbody>
                    </table>
                </div>
                <%-- Modal --%>
                <div class="modal fade" id="janelaFotos">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Upload Fotos</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <iframe style="width: 95%; height: 300px; border: nome;" name="iFrameFotos" id="iframeFotos"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
                <script type="text/javascript">
                    $(document).ready(function () {

                        $.ajax({
                            type: 'GET',
                            url: './getDados?cmd=listaprodutos',
                            data: 'data',
                            mimeType: 'json',
                            success: function (retorno) {
                                var dados = retorno.data;
                                $.each(dados, function (i, dados) {
                                    var body = "<tr>";
                                    body += "<td>" + dados.prodId + "</td>";
                                    body += "<td>" + dados.prodCategoria + "</td>";
                                    body += "<td>" + dados.prodNome + "</td>";
                                    body += "<td>" + dados.prodCor + "</td>";
                                    body += "<td>" + dados.prodMarca + "</td>";
                                    body += "<td>" + dados.prodPreco + "</td>";
                                    body += "<td> <button type=\"button\" onClick=\"abreGerenciadorFoto(" + dados.prodId + ");\" class=\" btn btn-sm btn-default\"><span class=\"glyphicon glyphicon-camera\"></span></button> </td>";
                                    body += "<td>" + dados.prodTamanho + "</td>";
                                    body += "<td>" + dados.prodMaterial + "</td>";
                                    body += "<td>" + dados.prodDescricao + "</td>";
                                    body += "</tr>";
                                    $("#tbody").append(body);
                                });
                                montaTabela();
                            },
                            error: function (erro) {
                                alert('Fail!-' + erro);
                            }
                        });
                    });
                </script>
                <script>
                    function montaTabela() {
                        $('#tabela-produtos').Tabledit({
                            url: "./produtos",
                            columns: {
                                identifier: [0, 'prodId'],
                                editable: [[1, 'prodCategoria'], [2, 'prodNome'],
                                    [3, 'prodCor'], [4, 'prodMarca'], [5, 'prodPreco'],
                                    [7, 'prodTamanho'], [8, 'prodMaterial'], [9, 'prodDescricao']]
                            },
                            onDraw: function () {
                                console.log('onDraw()');
                            },
                            onSuccess: function (data, textStatus, jqXHR) {
                                console.log('onSuccess(data, textStatus, jqXHR)');
                                console.log(data);
                                console.log(textStatus);
                                console.log(jqXHR);
                            },
                            onFail: function (jqXHR, textStatus, errorThrown) {
                                console.log('onFail(jqXHR, textStatus, errorThrown)');
                                console.log(jqXHR);
                                console.log(textStatus);
                                console.log(errorThrown);
                            },
                            onAlways: function () {
                                console.log('onAlways()');
                            },
                            onAjax: function (action, serialize) {
                                console.log('onAjax(action, serialize)');
                                console.log(action);
                                console.log(serialize);
                            }
                        });
                    }
                    function abreGerenciadorFoto(id) {
                        $("#iframeFotos").attr("src", "./fotos?prodId=" + id + "&action=editar");
                        $("#janelaFotos").modal();

                    }
                </script>
            </main>
        </div>
        <script src="js/msgjs.js"></script>
    </body>
</html>
