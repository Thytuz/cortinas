<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <!--head-->	
    <jsp:include page="templates/head.html"></jsp:include>
        <!--end head-->

        <body>

            <!--header-->	
        <jsp:include page="templates/header.html"></jsp:include>
            <!--end header-->
            <div class="container-fluid">
                <div class="row">
                    <!--menu-->	
                <jsp:include page="templates/menu.html"></jsp:include>
                    <!--end menu-->  
                    <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
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
                                        <th>Descricao</th>
                                        <th class="tabledit-toolbar-column">Ação</th></tr>
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
                                    <h5 class="modal-title">Upload Picture</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <iframe style="width: 95%; height: 300px; border: nome;" id="iframeFotos"></iframe>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <script src="https://markcell.github.io/jquery-tabledit/assets/js/jquery.min.js"></script>
                    <script src="https://markcell.github.io/jquery-tabledit/assets/js/bootstrap.min.js"></script>
                    <script src="https://markcell.github.io/jquery-tabledit/assets/js/prettify.min.js"></script>
                    <script src="https://markcell.github.io/jquery-tabledit/assets/js/tabledit.min.js"></script>

                    <script type="text/javascript">
                        $(document).ready(function () {

                            $.ajax({
                                type: 'GET',
                                url: '../getDados?cmd=listaprodutos',
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
                                url: "../produtos",
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

                            $("#iframeFotos").attr("src", "../fotos?prodId=" + id + "&cmd=listar");
                            $("#janelaFotos").modal();

                        }
                    </script>
                </main>
            </div>
        </div>
    </body>
</html>
