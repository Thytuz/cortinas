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
                    <input type="password" name="senha" required>
                    <input type="hidden" name="action" value="logar">
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary btn-block">Login</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>