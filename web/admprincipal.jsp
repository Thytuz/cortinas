<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <%
        HttpSession sessao = request.getSession();
        Integer usuaId = (Integer) (sessao.getAttribute("usuaId"));
        request.setAttribute("usuaId", usuaId);
    %>
    <style>
        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        /* Set a style for all buttons */
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            opacity: 0.8;
        }

        /* Extra styles for the cancel button */
        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        img.avatar {
            width: 40%;
            border-radius: 50%;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            padding-top: 60px;
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 80%; /* Could be more or less, depending on screen size */
        }


        /* Add Zoom Animation */
        .animate {
            -webkit-animation: animatezoom 0.6s;
            animation: animatezoom 0.6s
        }

        @-webkit-keyframes animatezoom {
            from {-webkit-transform: scale(0)} 
            to {-webkit-transform: scale(1)}
        }

        @keyframes animatezoom {
            from {transform: scale(0)} 
            to {transform: scale(1)}
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cancelbtn {
                width: 100%;
            }
        }
    </style>
    <body>
        <!--head-->	
        <jsp:include page="templates/header.html"></jsp:include>
            <!--end head-->

        <body>

            <!--header-->	
        <jsp:include page="templates/admmenu.html"></jsp:include>
            <!--end header-->

            <!-- Modal -->
            <div id="modal" class="modal show fade in" data-keyboard="false" data-backdrop="static">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Login Administrativo</h5>
                        </div>
                        <div class="modal-body">
                        <%
                            String mensagem = (String) request.getAttribute("mensagem");
                            if (mensagem != null) {
                                out.println(mensagem);
                            }
                        %>
                        <form action="./usuarios" method="POST">
                            <label>*Email</label>
                            <input type="text" name="email" required>
                            <label>*Senha</label>
                            <input type="text" name="senha" required>
                            <input type="hidden" name="action" value="logar">
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary">Login</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
        <div class="container" style="display: none;">
            <div class="row">
                <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
                    <%
                        if (mensagem != null) {
                            out.println(mensagem);
                        }
                    %>
                    <h1>Painel Administrativo</h1>
                    <h3>Gerencie seu E-Commerce com as opções acima.</h3>
                </main>
            </div>
        </div>
        <c:if test="${usuaId != null}">
            <script>
                $("#modal").removeClass("show");
                $(".container").css({
                    display: "block"
                });
            </script>
        </c:if>
        <script src="js/msgjs.js"></script>
    </body>
</html>
