package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.FotoModel;
import models.ProdutoModel;

public class FotoDAO implements DAO {

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
        PreparedStatement ps = null;
        Connection conn = null;
        ResultSet rs = null;
        List<FotoModel> listaFotos = new ArrayList<>();
        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("SELECT * FROM fotos GROUP BY fotoProdId");
            rs = ps.executeQuery();
            while (rs.next()) {
                ProdutoModel produtoModel = new ProdutoModel(rs.getInt(3), null, null, null, null, null, null, null, null);
                listaFotos.add(new FotoModel(rs.getInt(1),
                        rs.getString(2), produtoModel));
            }

        } catch (SQLException sqle) {
            throw new Exception(sqle);
        } finally {
            ConnectionDAO.closeConnection(conn, ps, rs);
        }
        return listaFotos;
    }

    @Override
    public List procura(Object ob) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void salvar(Object ob) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List buscaFotosPorIdProduto(int prodId) throws Exception {
        PreparedStatement ps = null;
        Connection conn = null;
        ResultSet rs = null;
        List<FotoModel> listaFotos = new ArrayList<>();
        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("SELECT * FROM `fotos` WHERE fotoProdId = ?");
            ps.setInt(1, prodId);
            rs = ps.executeQuery();
            while (rs.next()) {
                ProdutoModel produtoModel = new ProdutoModel(rs.getInt(3), null, null, null, null, null, null, null, null);
                listaFotos.add(new FotoModel(rs.getInt(1),
                        rs.getString(2), produtoModel));
            }

        } catch (SQLException sqle) {
            throw new Exception(sqle);
        } finally {
            ConnectionDAO.closeConnection(conn, ps, rs);
        }
        return listaFotos;

    }

}
