/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author mtsth
 */
public class ProdutoModel {

    private Integer prodId;
    private Integer prodCateId;
    private String prodNome;
    private String prodCor;
    private String prodMarca;
    private Double prodPreco;

    public ProdutoModel(Integer prodId, Integer prodCateId, String prodNome, String prodCor, String prodMarca, Double prodPreco) {
        this.prodId = prodId;
        this.prodCateId = prodCateId;
        this.prodNome = prodNome;
        this.prodCor = prodCor;
        this.prodMarca = prodMarca;
        this.prodPreco = prodPreco;
    }

    public Integer getProdId() {
        return prodId;
    }

    public void setProdId(Integer prodId) {
        this.prodId = prodId;
    }

    public Integer getProdCateId() {
        return prodCateId;
    }

    public void setProdCateId(Integer prodCateId) {
        this.prodCateId = prodCateId;
    }

    public String getProdNome() {
        return prodNome;
    }

    public void setProdNome(String prodNome) {
        this.prodNome = prodNome;
    }

    public String getProdCor() {
        return prodCor;
    }

    public void setProdCor(String prodCor) {
        this.prodCor = prodCor;
    }

    public String getProdMarca() {
        return prodMarca;
    }

    public void setProdMarca(String prodMarca) {
        this.prodMarca = prodMarca;
    }

    public Double getProdPreco() {
        return prodPreco;
    }

    public void setProdPreco(Double prodPreco) {
        this.prodPreco = prodPreco;
    }

}
