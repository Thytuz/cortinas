<%-- 
    Document   : listaJSON
    Created on : 08/11/2017, 17:22:48
    Author     : tatuapu
--%>

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
            dados.put("clieCPF", cm.getClieCPF().toString());
            dados.put("clieEmail", cm.getClieEmail().toString());
            dados.put("clieTelefone", cm.getClieTelefone().toString());
            dados.put("clieEndereco", cm.getClieEndereco().toString());

            filhos.add(dados);

        }
        pai.put("data", filhos);
        out.print(pai);
    }
%>
