import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

// Layout
import Header from "./cabecalho/Header";
import Footer from "./rodape/Footer";

// Páginas públicas
import Home from "./paginas/Home";
import Menu from "./paginas/Menu";
import Lanches from "./paginas/Lanches";
import Sucos from "./paginas/Sucos";
import Receitas from "./paginas/Receitas";
import Pedidos from "./paginas/Pedidos";

// Cadastros
import CadastroGeral from "./paginas/CadastroGeral/CadastroGeral";
import CadastroMenu from "./paginas/CadastroGeral/CadastroMenu";
import CadastroClientes from "./paginas/CadastroGeral/CadastroCliente";
import CadastroLanches from "./paginas/CadastroGeral/CadastroLanches";
import CadastroSucos from "./paginas/CadastroGeral/CadastroSucos";
import CadastroReceitas from "./paginas/CadastroGeral/CadastroReceitas";
import CadastroFornecedores from "./paginas/CadastroGeral/CadastroFornecedores";

// =====================================================
// RELATÓRIOS (IMPORTS CORRETOS CONFORME ARQUIVOS)
// =====================================================

import Relatorios from "./paginas/Relatorios/Index";
import RelatorioClientes from "./paginas/Relatorios/Clientes";
import RelatorioProdutos from "./paginas/Relatorios/Produtos";
import RelatorioFaturamento from "./paginas/Relatorios/Faturamento";
import RelatorioRankingClientes from "./paginas/Relatorios/RelatorioRankingClientes";
//import RelatorioHistoricoCPF from "./paginas/Relatorios/RelatorioHistoricoCPF";

// Estilos
import "./index.css";

function App() {
  return (
    <Router>
      <Header />

      <div className="container">
        <Routes>

          {/* Páginas públicas */}
          <Route path="/" element={<Home />} />
          <Route path="/menu" element={<Menu />} />
          <Route path="/lanches" element={<Lanches />} />
          <Route path="/sucos" element={<Sucos />} />
          <Route path="/receitas" element={<Receitas />} />
          <Route path="/pedidos" element={<Pedidos />} />

          {/* Cadastros */}
          <Route path="/cadastro-geral" element={<CadastroGeral />} />
          <Route path="/cadastro-geral/menu" element={<CadastroMenu />} />
          <Route path="/cadastro-geral/lanches" element={<CadastroLanches />} />
          <Route path="/cadastro-geral/sucos" element={<CadastroSucos />} />
          <Route path="/cadastro-geral/receitas" element={<CadastroReceitas />} />
          <Route path="/cadastro-geral/clientes" element={<CadastroClientes />} />
          <Route path="/cadastro-geral/fornecedores" element={<CadastroFornecedores />} />

          {/* Relatórios */}
          <Route path="/relatorios" element={<Relatorios />} />
          <Route path="/relatorios/clientes" element={<RelatorioClientes />} />
          <Route path="/relatorios/produtos" element={<RelatorioProdutos />} />
          <Route path="/relatorios/faturamento" element={<RelatorioFaturamento />} />
          <Route path="/relatorios/ranking" element={<RelatorioRankingClientes />} />
          {/*<Route path="/relatorios/historico-cpf" element={<RelatorioHistoricoCPF />} /> */}

        </Routes>
      </div>

      <Footer />
    </Router>
  );
}

export default App;
