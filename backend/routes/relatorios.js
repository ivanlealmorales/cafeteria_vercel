import express from "express";
const router = express.Router();

export default function relatoriosRoutes(db) {

  // =====================================================
  // CLIENTES CADASTRADOS
  // =====================================================
  router.get("/clientes", (req, res) => {
    db.query(
      "SELECT id, nome, cpf, cidade, estado FROM pessoafisica",
      (err, rows) => {
        if (err) return res.status(500).json(err);
        res.json(rows);
      }
    );
  });

  // =====================================================
  // RANKING DE CLIENTES
  // =====================================================
  router.get("/clientes/ranking", (req, res) => {
    const sql = `
      SELECT 
        cpf,
        COUNT(id) AS total_pedidos,
        SUM(total) AS total_gasto
      FROM pedido
      WHERE concluido = 1
      GROUP BY cpf
      ORDER BY total_gasto DESC
    `;
    db.query(sql, (err, rows) => {
      if (err) return res.status(500).json(err);
      res.json(rows);
    });
  });

  // =====================================================
  // PRODUTOS VENDIDOS (SEM CATEGORIA)
  // =====================================================
  router.get("/produtos/vendidos", (req, res) => {
    const sql = `
      SELECT
        produto_nome AS produto,
        SUM(quantidade) AS quantidade,
        SUM(total) AS faturamento
      FROM pedido
      WHERE concluido = 1
      GROUP BY produto_nome
      ORDER BY produto_nome
    `;

    db.query(sql, (err, rows) => {
      if (err) return res.status(500).json(err);
      res.json(rows);
    });
  });

  // =====================================================
  // FATURAMENTO DIÁRIO (DATA PADRÃO BR)
  // =====================================================
  router.get("/faturamento/diario", (req, res) => {
    const sql = `
      SELECT 
        DATE_FORMAT(data_pedido, '%d/%m/%Y') AS dia,
        COUNT(id) AS pedidos,
        SUM(total) AS faturamento
      FROM pedido
      WHERE concluido = 1
      GROUP BY DATE_FORMAT(data_pedido, '%d/%m/%Y')
      ORDER BY STR_TO_DATE(dia, '%d/%m/%Y') DESC
    `;
    db.query(sql, (err, rows) => {
      if (err) return res.status(500).json(err);
      res.json(rows);
    });
  });

  // =====================================================
  // HISTÓRICO DE COMPRAS POR CPF
  // =====================================================
  router.get("/clientes/historico/:cpf", (req, res) => {
    const cpf = req.params.cpf.replace(/\D/g, "");

    const sql = `
      SELECT 
        produto_nome AS produto,
        quantidade,
        total,
        DATE_FORMAT(data_pedido, '%d/%m/%Y') AS data
      FROM pedido
      WHERE concluido = 1
        AND cpf = ?
      ORDER BY data_pedido DESC
    `;

    db.query(sql, [cpf], (err, rows) => {
      if (err) return res.status(500).json(err);
      res.json(rows);
    });
  });

  return router;
}
