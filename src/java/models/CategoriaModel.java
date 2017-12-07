package models;

public class CategoriaModel {

    private Integer cateId;
    private String cateNome;

    public CategoriaModel(Integer cateId, String cateNome) {
        this.cateId = cateId;
        this.cateNome = cateNome;
    }

    public Integer getCateId() {
        return cateId;
    }

    public void setCateId(Integer cateId) {
        this.cateId = cateId;
    }

    public String getCateNome() {
        return cateNome;
    }

    public void setCateNome(String cateNome) {
        this.cateNome = cateNome;
    }

}
