<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
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
                    <h1>Painel Administrativo</h1>
                    <h3>Selecione as opções no menu ao lado</h3>
                </main>
            </div>
        </div>
        <script src="../jquery/jquery.js"></script>  
        <script src="../bootstrap/js/popper.js"></script>
        <script src="../bootstrap/js/bootstrap.min.js"></script>
        <script src="../jquery/jquery.dataTables.min.js"></script>
        <script src="../bootstrap/js/dataTables.bootstrap4.min.js"></script>
    </body>
</html>
