# Automação de Chamados — Scripts Batch

Conjunto de **3 scripts Batch (.bat)** voltados ao suporte de TI, criados para acelerar tarefas recorrentes em chamados de helpdesk.

## 🎯 Objetivo

Reduzir o tempo de atendimento de chamados de suporte automatizando coleta de dados, limpeza e diagnóstico — atividades que normalmente exigem vários comandos manuais.

## 📜 Scripts

| Arquivo | Descrição |
|---|---|
| `01-info-sistema.bat` | Gera um relatório com informações do sistema, rede e disco (salvo na Área de Trabalho) |
| `02-limpar-temp.bat` | Limpa pastas temporárias (`%TEMP%`, `Windows\Temp`, `Prefetch`) para resolver lentidão |
| `03-diagnostico-rede.bat` | Faz testes de conectividade (ipconfig, ping, tracert, nslookup) e gera log |

## ▶️ Como usar

1. Baixe ou clone o repositório:
   ```bash
   git clone https://github.com/ArthurFelipeQueiroz/portifolioHUB.git
   ```
2. Acesse a pasta:
   ```
   cd portifolioHUB\projetos\automacao-chamados
   ```
3. **Execute como Administrador** o script desejado (clique-direito → "Executar como administrador").
4. Os relatórios são salvos na **Área de Trabalho** do usuário atual.

## ⚠️ Atenção

- O script `02-limpar-temp.bat` apaga arquivos temporários. Pede confirmação antes de executar.
- Os scripts foram testados em **Windows 10/11**.
- Use sempre em ambiente autorizado, conforme política da empresa/instituição.

## 🧰 Tecnologias

- Batch Script (CMD)
- Comandos nativos do Windows: `systeminfo`, `ipconfig`, `ping`, `tracert`, `nslookup`, `wmic`

## 👤 Autor

Arthur Felipe Queiroz Costa — ADS 1º Semestre
