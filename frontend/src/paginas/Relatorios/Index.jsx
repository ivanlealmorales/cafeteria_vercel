import { Link } from "react-router-dom";
import "./Index.css";

export default function Relatorios() {
  return (
    <div className="relatorios-container">
      <h2>Relatórios do Sistema</h2>

      <ul className="relatorios-lista">
        <li>
          <Link to="/relatorios/clientes">📋 Clientes Cadastrados</Link>
        </li>

        <li>
          <Link to="/relatorios/ranking">🏆 Ranking de Clientes</Link>
        </li>

        <li>
          <Link to="/relatorios/produtos">🍔 Produtos Vendidos</Link>
        </li>

        <li>
          <Link to="/relatorios/faturamento">💰 Faturamento Diário</Link>
        </li>

      {/*/  <li>
      //    <Link to="/relatorios/cliente-cpf">🔎 Histórico por CPF</Link>
      //  </li> */}
      </ul>
    </div>
  );
}
