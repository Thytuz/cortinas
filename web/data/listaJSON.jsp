<%@page import="models.ProdutoModel"%>
<%@page import="models.ClienteModel"%>
<%@page import="java.io.StringWriter"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.*"%>
<%
    JSONObject dados = new JSONObject();
    JSONParser parser = new JSONParser();
    String saida = "";
    String classe = (request.getAttribute("classe") != null) ? request.getAttribute("classe").toString() : "";

    if (classe.equalsIgnoreCase("cliente")) {
        ArrayList<ClienteModel> lista;
        lista = (ArrayList<ClienteModel>) request.getAttribute("lista-clientes");
        int i = 1;
        JSONObject pai = new JSONObject();
        JsonArray filhos = new JsonArray();
        for (ClienteModel cm : lista) {
            dados = new JSONObject();
            dados.put("clieId", cm.getClieId().toString());
            dados.put("clieNome", cm.getClieNome().toString());
            dados.put("clieCPF", cm.getClieCPF());
            dados.put("clieEmail", cm.getClieEmail().toString());
            dados.put("clieTelefone", cm.getClieTelefone());
            dados.put("clieEndereco", cm.getClieEndereco());
            filhos.add(dados);

        }
        pai.put("data", filhos);
        out.print(pai);
    }

    if (classe.equalsIgnoreCase("produto")) {
        ArrayList<ProdutoModel> lista;
        lista = (ArrayList<ProdutoModel>) request.getAttribute("lista-produtos");
        int i = 1;
        JSONObject pai = new JSONObject();
        JsonArray filhos = new JsonArray();
        for (ProdutoModel pm : lista) {
            dados = new JSONObject();
            dados.put("prodId", pm.getProdId().toString());
            dados.put("prodCategoria", pm.getProdCategoria().toString());
            dados.put("prodNome", pm.getProdNome().toString());
            dados.put("prodCor", pm.getProdCor().toString());
            dados.put("prodMarca", pm.getProdMarca().toString());
            dados.put("prodPreco", pm.getProdPreco().toString());
            dados.put("prodTamanho", pm.getProdTamanho().toString());
            dados.put("prodMaterial", pm.getProdMaterial().toString());
            dados.put("prodDescricao", pm.getProdDescricao().toString());

            filhos.add(dados);

        }
        pai.put("data", filhos);
        out.print(pai);
    }
%>
