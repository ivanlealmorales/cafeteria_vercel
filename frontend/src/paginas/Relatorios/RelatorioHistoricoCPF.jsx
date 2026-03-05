import { useState } from "react";
import { api } from "../../services/api";

export default function RelatorioHistoricoCPF() {
  const [cpf, setCpf] = useState("");
  const [historico, setHistorico] = useState([]);

  function buscarHistorico() {
    if (cpf.length < 11) {
      alert("Digite um CPF válido");
      return;
    }

    api.get(`/relatorios/clientes/historico/${cpf}`)
      .then(res => setHistorico(res.data))
      .catch(err => console.error(err));
  }

  return (
    <div>
      <h2>Histórico por CPF</h2>

      <input
        placeholder="Digite o CPF"
        value={cpf}
        onChange={e => setCpf(e.target.value)}
      />

      <button onClick={buscarHistorico}>Buscar</button>

      <table>
        <thead>
          <tr>
            <th>Produto</th>
            <th>Quantidade</th>
            <th>Total</th>
            <th>Data</th>
          </tr>
        </thead>
        <tbody>
          {historico.map((h, i) => (
            <tr key={i}>
              <td>{h.produto}</td>
              <td>{h.quantidade}</td>
              <td>R$ {h.total}</td>
              <td>{h.data}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}
