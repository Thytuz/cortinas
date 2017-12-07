package models;

public class FotoModel {

    private Integer fotoId;
    private String fotoSrc;
    private ProdutoModel produtoModel;

    public FotoModel(Integer fotoId, String fotoSrc, ProdutoModel produtoModel) {
        this.fotoId = fotoId;
        this.fotoSrc = fotoSrc;
        this.produtoModel = produtoModel;
    }

    public Integer getFotoId() {
        return fotoId;
    }

    public void setFotoId(Integer fotoId) {
        this.fotoId = fotoId;
    }

    public String getFotoSrc() {
        return fotoSrc;
    }

    public void setFotoSrc(String fotoSrc) {
        this.fotoSrc = fotoSrc;
    }

    public ProdutoModel getProdutoModel() {
        return produtoModel;
    }

    public void setProdutoModel(ProdutoModel produtoModel) {
        this.produtoModel = produtoModel;
    }

}
