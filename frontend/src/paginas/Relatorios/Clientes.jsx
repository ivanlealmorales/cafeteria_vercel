
import { useEffect, useState } from "react";
import { api } from "../../services/api";

export default function RelatorioClientes() {
  const [clientes, setClientes] = useState([]);

  useEffect(() => {
    api.get("/relatorios/clientes")
      .then(res => setClientes(res.data))
      .catch(err => console.error(err));
  }, []);

  return (
    <div>
      <h2>Relatório de Clientes</h2>
      <table>
        <thead>
          <tr>
            <th>Nome</th>
            <th>CPF</th>
            <th>Cidade</th>
            <th>Estado</th>
          </tr>
        </thead>
        <tbody>
          {clientes.map(c => (
            <tr key={c.cpf}>
              <td>{c.nome}</td>
              <td>{c.cpf}</td>
              <td>{c.cidade}</td>
              <td>{c.estado}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}
