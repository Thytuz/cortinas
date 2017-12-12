package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import models.UsuarioModel;

public class UsuarioDAO
        implements DAO {

    @Override
    public void atualizar(Object ob) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void excluir(Object ob) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List listaTodos() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List procura(Object ob) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void salvar(Object ob) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public UsuarioModel login(UsuarioModel usuarioModel) throws Exception {
        PreparedStatement ps = null;
        Connection conn = null;
        ResultSet rs = null;

        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("SELECT * FROM usuarios WHERE usuaSenha = ? AND usuaEmail = ?");
            ps.setString(1, usuarioModel.getUsuaSenha());
            ps.setString(2, usuarioModel.getUsuaEmail());

            rs = ps.executeQuery();
            while (rs.next()) {
                usuarioModel = new UsuarioModel(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
                return usuarioModel;
            }

        } catch (SQLException sqle) {
            throw new Exception(sqle);
        } finally {
            ConnectionDAO.closeConnection(conn, ps, rs);
        }
        return new UsuarioModel(null, null, null, null);
    }

}
