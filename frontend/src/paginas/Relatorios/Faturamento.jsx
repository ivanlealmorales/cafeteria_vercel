
import { useEffect, useState } from "react";
import { api } from "../../services/api";

export default function RelatorioFaturamento() {
  const [dados, setDados] = useState([]);

  useEffect(() => {
    api.get("/relatorios/faturamento/diario")
      .then(res => setDados(res.data))
      .catch(err => console.error(err));
  }, []);

  return (
    <div>
      <h2>Faturamento Diário</h2>
      <table>
        <thead>
          <tr>
            <th>Dia</th>
            <th>Pedidos</th>
            <th>Faturamento</th>
          </tr>
        </thead>
        <tbody>
          {dados.map((d, i) => (
            <tr key={i}>
              <td>{d.dia}</td>
              <td>{d.pedidos}</td>
              <td>R$ {d.faturamento}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}
