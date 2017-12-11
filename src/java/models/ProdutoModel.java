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
    private String prodCategoria;
    private String prodNome;
    private String prodCor;
    private String prodMarca;
    private Double prodPreco;
    private String prodTamanho;
    private String prodMaterial;
    private String prodDescricao;

    public ProdutoModel(Integer prodId, String prodCategoria, String prodNome, String prodCor, String prodMarca, Double prodPreco, String prodTamanho, String prodMaterial, String prodDescricao) {
        this.prodId = prodId;
        this.prodCategoria = prodCategoria;
        this.prodNome = prodNome;
        this.prodCor = prodCor;
        this.prodMarca = prodMarca;
        this.prodPreco = prodPreco;
        this.prodTamanho = prodTamanho;
        this.prodMaterial = prodMaterial;
        this.prodDescricao = prodDescricao;
    }

    public Integer getProdId() {
        return prodId;
    }

    public void setProdId(Integer prodId) {
        this.prodId = prodId;
    }

    public String getProdCategoria() {
        return prodCategoria;
    }

    public void setProdCategoria(String prodCategoria) {
        this.prodCategoria = prodCategoria;
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

    public String getProdTamanho() {
        return prodTamanho;
    }

    public void setProdTamanho(String prodTamanho) {
        this.prodTamanho = prodTamanho;
    }

    public String getProdMaterial() {
        return prodMaterial;
    }

    public void setProdMaterial(String prodMaterial) {
        this.prodMaterial = prodMaterial;
    }

    public String getProdDescricao() {
        return prodDescricao;
    }

    public void setProdDescricao(String prodDescricao) {
        this.prodDescricao = prodDescricao;
    }

}
