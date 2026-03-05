import { useEffect, useState } from "react";
import { api } from "../../services/api";

export default function RelatorioProdutos() {
  const [produtos, setProdutos] = useState([]);

  useEffect(() => {
    api.get("/relatorios/produtos/vendidos")
      .then(res => setProdutos(res.data))
      .catch(err => console.error(err));
  }, []);

  return (
    <div>
      <h2>Produtos Vendidos</h2>
      <table>
        <thead>
          <tr>
            <th>Produto</th>
            <th>Categoria</th>
            <th>Quantidade</th>
            <th>Faturamento</th>
          </tr>
        </thead>
        <tbody>
          {produtos.map((p, i) => (
            <tr key={i}>
              <td>{p.produto}</td>   {/* ✅ CORREÇÃO AQUI */}
              <td>{p.categoria}</td>
              <td>{p.quantidade}</td>
              <td>R$ {p.faturamento}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}
