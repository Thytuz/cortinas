/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.ClienteModel;

/**
 *
 * @author mtsth
 */
public class ClienteDAO implements DAO {

    @Override
    public void atualizar(Object ob) throws Exception {
        PreparedStatement ps = null;
        Connection conn = null;
        ResultSet rs = null;
        ClienteModel clienteModel = (ClienteModel) ob;

        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("UPDATE `clientes` "
                    + " SET clieNome = ?, clieCPF = ?, clieTelefone = ?, clieEmail = ?, "
                    + " clieEndereco = ?"
                    + " WHERE clieId = ?");
            ps.setString(1, clienteModel.getClieNome());
            ps.setString(2, clienteModel.getClieCPF());
            ps.setString(3, clienteModel.getClieTelefone());
            ps.setString(4, clienteModel.getClieEmail());
            ps.setString(5, clienteModel.getClieEndereco());
            ps.setInt(6, clienteModel.getClieId());
            int resp = ps.executeUpdate();
            if (resp == 0) {
                throw new Exception("Erro");
            }
        } catch (SQLException sqle) {
            throw new Exception(sqle);
        } finally {
            ConnectionDAO.closeConnection(conn, ps, rs);
        }
    }

    @Override
    public void excluir(Object ob) throws Exception {
        ClienteModel clienteModel = (ClienteModel) ob;
        PreparedStatement ps = null;
        Connection conn = null;
        ResultSet rs = null;
        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("DELETE FROM `clientes` WHERE clieId = ?");
            ps.setInt(1, clienteModel.getClieId());
            int resp = ps.executeUpdate();
            if (resp == 0) {
                throw new Exception("Erro");
            }
        } catch (SQLException sqle) {
            throw new Exception(sqle);
        } finally {
            ConnectionDAO.closeConnection(conn, ps, rs);
        }
    }

    @Override
    public List listaTodos() throws Exception {
        PreparedStatement ps = null;
        Connection conn = null;
        ResultSet rs = null;
        List<ClienteModel> listaClientes = new ArrayList<>();
        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("SELECT * FROM `clientes`");
            rs = ps.executeQuery();
            while (rs.next()) {
                listaClientes.add(new ClienteModel(rs.getInt(1),
                        rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7)));
            }

        } catch (SQLException sqle) {
            throw new Exception(sqle);
        } finally {
            ConnectionDAO.closeConnection(conn, ps, rs);
        }
        return listaClientes;
    }

    @Override
    public List procura(Object ob) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void salvar(Object ob) throws Exception {
        PreparedStatement ps = null;
        Connection conn = null;
        ResultSet rs = null;
        ClienteModel clienteModel = (ClienteModel) ob;

        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("INSERT INTO `clientes` (`clieNome`, `clieTelefone`, `clieEmail`, `clieSenha`) VALUES (?, ?, ?, ?) ");
            ps.setString(1, clienteModel.getClieNome());
            ps.setString(2, clienteModel.getClieTelefone());
            ps.setString(3, clienteModel.getClieEmail());
            ps.setString(4, clienteModel.getClieSenha());

            int resp = ps.executeUpdate();
            if (resp == 0) {
                throw new Exception("Erro");
            }

        } catch (SQLException sqle) {
            throw new Exception(sqle);
        } finally {
            ConnectionDAO.closeConnection(conn, ps, rs);
        }

    }

}
