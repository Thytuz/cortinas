package models;

public class ClienteModel {

    private Integer clieId;
    private String clieNome;
    private String clieCPF;
    private String clieTelefone;
    private String clieEmail;
    private String clieSenha;
    private String clieEndereco;

    public ClienteModel(Integer clieId, String clieNome, String clieCPF, String clieTelefone, String clieEmail, String clieSenha, String clieEndereco) {
        this.clieId = clieId;
        this.clieNome = clieNome;
        this.clieCPF = clieCPF;
        this.clieTelefone = clieTelefone;
        this.clieEmail = clieEmail;
        this.clieSenha = clieSenha;
        this.clieEndereco = clieEndereco;
    }

    public Integer getClieId() {
        return clieId;
    }

    public void setClieId(Integer clieId) {
        this.clieId = clieId;
    }

    public String getClieNome() {
        return clieNome;
    }

    public void setClieNome(String clieNome) {
        this.clieNome = clieNome;
    }

    public String getClieCPF() {
        return clieCPF;
    }

    public void setClieCPF(String clieCPF) {
        this.clieCPF = clieCPF;
    }

    public String getClieTelefone() {
        return clieTelefone;
    }

    public void setClieTelefone(String clieTelefone) {
        this.clieTelefone = clieTelefone;
    }

    public String getClieEmail() {
        return clieEmail;
    }

    public void setClieEmail(String clieEmail) {
        this.clieEmail = clieEmail;
    }

    public String getClieSenha() {
        return clieSenha;
    }

    public void setClieSenha(String clieSenha) {
        this.clieSenha = clieSenha;
    }

    public String getClieEndereco() {
        return clieEndereco;
    }

    public void setClieEndereco(String clieEndereco) {
        this.clieEndereco = clieEndereco;
    }

}
