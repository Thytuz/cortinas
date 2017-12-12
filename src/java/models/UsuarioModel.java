package models;

public class UsuarioModel {

    private Integer usuaId;
    private String usuaNome;
    private String usuaEmail;
    private String usuaSenha;

    public UsuarioModel(Integer usuaId, String usuaNome, String usuaEmail, String usuaSenha) {
        this.usuaId = usuaId;
        this.usuaNome = usuaNome;
        this.usuaEmail = usuaEmail;
        this.usuaSenha = usuaSenha;
    }

    public Integer getUsuaId() {
        return usuaId;
    }

    public void setUsuaId(Integer usuaId) {
        this.usuaId = usuaId;
    }

    public String getUsuaNome() {
        return usuaNome;
    }

    public void setUsuaNome(String usuaNome) {
        this.usuaNome = usuaNome;
    }

    public String getUsuaEmail() {
        return usuaEmail;
    }

    public void setUsuaEmail(String usuaEmail) {
        this.usuaEmail = usuaEmail;
    }

    public String getUsuaSenha() {
        return usuaSenha;
    }

    public void setUsuaSenha(String usuaSenha) {
        this.usuaSenha = usuaSenha;
    }

}
