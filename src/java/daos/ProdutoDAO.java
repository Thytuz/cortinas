package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.CategoriaModel;
import models.ProdutoModel;

public class ProdutoDAO implements DAO {

    @Override
    public void atualizar(Object ob) throws Exception {
        PreparedStatement ps = null;
        Connection conn = null;
        ResultSet rs = null;
        ProdutoModel produtoModel = (ProdutoModel) ob;

        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("UPDATE `produtos` "
                    + " SET prodNome = ?, prodCor = ?, prodMarca = ?, prodPreco = ?"
                    + " WHERE prodId = ?");
            ps.setString(1, produtoModel.getProdNome());
            ps.setString(2, produtoModel.getProdCor());
            ps.setString(3, produtoModel.getProdMarca());
            ps.setDouble(4, produtoModel.getProdPreco());
            ps.setInt(5, produtoModel.getProdId());
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List listaTodos() throws Exception {
        PreparedStatement ps = null;
        Connection conn = null;
        ResultSet rs = null;
        List<ProdutoModel> listaProdutos = new ArrayList<>();
        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("SELECT * FROM `produtos`");
            rs = ps.executeQuery();
            while (rs.next()) {
                CategoriaModel categoriaModel = new CategoriaModel(rs.getInt(2), null);
                listaProdutos.add(new ProdutoModel(rs.getInt(1),
                        categoriaModel, rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getDouble(6)));
            }

        } catch (SQLException sqle) {
            throw new Exception(sqle);
        } finally {
            ConnectionDAO.closeConnection(conn, ps, rs);
        }
        return listaProdutos;
    }

    @Override
    public List procura(Object ob) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void salvar(Object ob) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public ProdutoModel buscaProdutoPorId(int prodId) throws Exception {
        PreparedStatement ps = null;
        Connection conn = null;
        ResultSet rs = null;
        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("SELECT * FROM `produtos` WHERE prodId = ?");
            ps.setInt(1, prodId);
            rs = ps.executeQuery();
            while (rs.next()) {
                CategoriaModel categoriaModel = new CategoriaModel(rs.getInt(2), null);
                ProdutoModel produtoModel = new ProdutoModel(rs.getInt(1),
                        categoriaModel, rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getDouble(6));
                return produtoModel;
            }

        } catch (SQLException sqle) {
            throw new Exception(sqle);
        } finally {
            ConnectionDAO.closeConnection(conn, ps, rs);
        }
        return null;
    }

}
