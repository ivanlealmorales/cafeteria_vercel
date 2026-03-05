// =====================================================
// IMPORTAÇÃO DO AXIOS
// =====================================================

// Axios é uma biblioteca HTTP usada para fazer requisições
// ao backend (GET, POST, PUT, DELETE, etc.)
import axios from "axios";

// =====================================================
// INSTÂNCIA CENTRAL DA API
// =====================================================

// Aqui criamos uma instância do Axios com uma configuração padrão.
// Essa instância será reutilizada em TODO o frontend.
//
// Vantagens:
// - Evita repetir o endereço do backend em vários arquivos
// - Facilita manutenção (troca de porta ou domínio)
// - Padroniza as chamadas HTTP do sistema
export const api = axios.create({

  // Endereço base do backend (Express + MySQL)
  // Todas as requisições feitas com "api"
// serão automaticamente prefixadas com este endereço
  baseURL: "http://localhost:3001",
});
