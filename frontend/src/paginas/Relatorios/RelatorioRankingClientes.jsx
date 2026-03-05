import { useEffect, useState } from "react";
import { api } from "../../services/api";

export default function RelatorioRankingClientes() {
  const [clientes, setClientes] = useState([]);

  useEffect(() => {
    api.get("/relatorios/clientes/ranking")
      .then(res => setClientes(res.data))
      .catch(err => console.error(err));
  }, []);

  return (
    <div>
      <h2>Ranking de Clientes</h2>

      <table>
        <thead>
          <tr>
            <th>CPF</th>
            <th>Pedidos</th>
            <th>Total Gasto</th>
          </tr>
        </thead>
        <tbody>
          {clientes.map((c, i) => (
            <tr key={i}>
              <td>{c.cpf}</td>
              <td>{c.total_pedidos}</td>
              <td>R$ {c.total_gasto}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}
