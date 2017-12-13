package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
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
                    + " SET prodNome = ?, prodCategoria = ?, prodCor = ?, prodMarca = ?, prodPreco = ?, "
                    + " prodTamanho = ?, prodMaterial = ?, prodDescricao = ? "
                    + " WHERE prodId = ?");
            ps.setString(1, produtoModel.getProdNome());
            ps.setString(2, produtoModel.getProdCategoria());
            ps.setString(3, produtoModel.getProdCor());
            ps.setString(4, produtoModel.getProdMarca());
            ps.setDouble(5, produtoModel.getProdPreco());
            ps.setString(6, produtoModel.getProdTamanho());
            ps.setString(7, produtoModel.getProdMaterial());
            ps.setString(8, produtoModel.getProdDescricao());
            ps.setInt(9, produtoModel.getProdId());
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
        ProdutoModel produtoModel = (ProdutoModel) ob;
        PreparedStatement ps = null;
        Connection conn = null;
        ResultSet rs = null;
        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("DELETE FROM `produtos` WHERE prodId = ?");
            ps.setInt(1, produtoModel.getProdId());
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
        List<ProdutoModel> listaProdutos = new ArrayList<>();
        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("SELECT * FROM `produtos`");
            rs = ps.executeQuery();
            while (rs.next()) {
                listaProdutos.add(new ProdutoModel(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getDouble(6), rs.getString(7),
                        rs.getString(8), rs.getString(9)));
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
        PreparedStatement ps = null;
        Connection conn = null;
        ResultSet rs = null;
        ProdutoModel produtoModel = (ProdutoModel) ob;

        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("INSERT INTO `produtos` (`prodCategoria`, `prodNome`, `prodCor`,"
                    + " `prodMarca`, `prodPreco`, `prodTamanho`, `prodMaterial`, `prodDescricao`)"
                    + " VALUES (?, ?, ?, ?, ?, ?, ?, ?) ");
            ps.setString(1, produtoModel.getProdCategoria());
            ps.setString(2, produtoModel.getProdNome());
            ps.setString(3, produtoModel.getProdCor());
            ps.setString(4, produtoModel.getProdMarca());
            ps.setDouble(5, produtoModel.getProdPreco());
            ps.setString(6, produtoModel.getProdTamanho());
            ps.setString(7, produtoModel.getProdMaterial());
            ps.setString(8, produtoModel.getProdDescricao());

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
                ProdutoModel produtoModel = new ProdutoModel(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getDouble(6), rs.getString(7),
                        rs.getString(8), rs.getString(9));
                return produtoModel;
            }

        } catch (SQLException sqle) {
            throw new Exception(sqle);
        } finally {
            ConnectionDAO.closeConnection(conn, ps, rs);
        }
        return null;
    }

    public List listaMarcas() throws Exception {
        PreparedStatement ps = null;
        Connection conn = null;
        ResultSet rs = null;
        List<ProdutoModel> listaProdutos = new ArrayList<>();
        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("SELECT * FROM `produtos` GROUP BY prodMarca");
            rs = ps.executeQuery();
            while (rs.next()) {
                listaProdutos.add(new ProdutoModel(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getDouble(6), rs.getString(7),
                        rs.getString(8), rs.getString(9)));
            }

        } catch (SQLException sqle) {
            throw new Exception(sqle);
        } finally {
            ConnectionDAO.closeConnection(conn, ps, rs);
        }
        return listaProdutos;
    }

    public List listaCores() throws Exception {
        PreparedStatement ps = null;
        Connection conn = null;
        ResultSet rs = null;
        List<ProdutoModel> listaProdutos = new ArrayList<>();
        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("SELECT * FROM `produtos` GROUP BY prodCor");
            rs = ps.executeQuery();
            while (rs.next()) {
                listaProdutos.add(new ProdutoModel(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getDouble(6), rs.getString(7),
                        rs.getString(8), rs.getString(9)));
            }

        } catch (SQLException sqle) {
            throw new Exception(sqle);
        } finally {
            ConnectionDAO.closeConnection(conn, ps, rs);
        }
        return listaProdutos;
    }

    public List listaCategorias() throws Exception {
        PreparedStatement ps = null;
        Connection conn = null;
        ResultSet rs = null;
        List<ProdutoModel> listaProdutos = new ArrayList<>();
        try {
            conn = ConnectionDAO.getConnection();
            ps = conn.prepareStatement("SELECT * FROM `produtos` GROUP BY prodCategoria");
            rs = ps.executeQuery();
            while (rs.next()) {
                listaProdutos.add(new ProdutoModel(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getDouble(6), rs.getString(7),
                        rs.getString(8), rs.getString(9)));
            }

        } catch (SQLException sqle) {
            throw new Exception(sqle);
        } finally {
            ConnectionDAO.closeConnection(conn, ps, rs);
        }
        return listaProdutos;
    }

}
