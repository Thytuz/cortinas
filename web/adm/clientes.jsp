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
                        <table class="table table-striped table-bordered" id="tabela-clientes">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nome</th>
                                    <th>CPF</th>
                                    <th>Email</th>
                                    <th>Telefone</th>
                                    <th>Endereço</th>
                                    <th class="tabledit-toolbar-column">Ação</th>
                                </tr>
                            </thead>
                            <tbody id="tbody">     
                            </tbody>
                        </table>
                    </div>
                    <script src="https://markcell.github.io/jquery-tabledit/assets/js/jquery.min.js"></script>
                    <script src="https://markcell.github.io/jquery-tabledit/assets/js/bootstrap.min.js"></script>
                    <script src="https://markcell.github.io/jquery-tabledit/assets/js/prettify.min.js"></script>
                    <script src="https://markcell.github.io/jquery-tabledit/assets/js/tabledit.min.js"></script>

                    <script type="text/javascript">
                        $(document).ready(function () {

                            $.ajax({
                                type: 'GET',
                                url: '../getDados?cmd=listaclientes',
                                data: 'data',
                                mimeType: 'json',
                                success: function (retorno) {
                                    var dados = retorno.data;
                                    $.each(dados, function (i, dados) {
                                        var body = "<tr>";
                                        body += "<td>" + dados.clieId + "</td>";
                                        body += "<td>" + dados.clieNome + "</td>";
                                        body += "<td>" + dados.clieCPF + "</td>";
                                        body += "<td>" + dados.clieEmail + "</td>";
                                        body += "<td>" + dados.clieTelefone + "</td>";
                                        body += "<td>" + dados.clieEndereco + "</td>";
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
                            $('#tabela-clientes').Tabledit({
                                url: "../clientes",
                                columns: {
                                    identifier: [0, 'clieId'],
                                    editable: [[1, 'clieNome'], [2, 'clieCPF'],
                                        [3, 'clieEmail'], [4, 'clieTelefone'], [5, 'clieEndereco']]
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
                    </script>
                </main>
            </div>
        </div>
    </body>
</html>
