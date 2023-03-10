<h1 align="center">powershell-runas</h1>
<p align=center><i align="center">Conjunto de scripts para execução de Powershell em computador remoto no domínio, com output no console principal</i></p>

<br>

<div align="center">

<a href="https://www.microsoft.com/pt-br/software-download/windows10"><img src="https://img.shields.io/badge/Windows-0078D6?style=plastic&logo=windows&logoColor=white" height="22" alt="Windows"/></a>
<a href="https://learn.microsoft.com/pt-br/powershell/"><img src="https://img.shields.io/badge/PowerShell-%235391FE.svg?style=plastic&logo=powershell&logoColor=white" height="22" alt="Powershell"/></a>

<a href=""><img src="https://img.shields.io/badge/maintenance-passively--maintained-yellowgreen.svg?style=plastic" height="22" alt="Maintenance-passively-maintained"/></a>
<a href=""><img src="https://img.shields.io/github/last-commit/dexdevlab/powershell-runas?style=plastic" height="22" alt="LastCommit"></a>
<a href=""><img src="https://snyk.io/test/github/dexdevlab/powershell-runas/badge.svg" height="22" alt="Snyk"/></a>

<a href=""><img src="https://img.shields.io/github/repo-size/dexdevlab/powershell-runas?style=plastic" height="22" alt="RepoSize"/></a>
<a href=""><img src="https://img.shields.io/github/languages/code-size/dexdevlab/powershell-runas?style=plastic" height="22" alt="CodeSize"/></a>
<a href=""><img src="https://img.shields.io/github/contributors/dexdevlab/powershell-runas?style=plastic" height="22" alt="Contributors"></a>

<a href=""><img src="https://img.shields.io/github/forks/dexdevlab/powershell-runas?style=plastic" height="22" alt="Fork"></a>
<a href=""><img src="https://img.shields.io/badge/version-1.0.0-140126?style=plastic" height="22" alt="Version"></a>
<a href="https://github.com/dexdevlab/powershell-runas/blob/main/LICENSE"><img src="https://img.shields.io/github/license/dexdevlab/powershell-runas?&style=plastic" height="22" alt="License"></a>

|| [Conteúdo](#section-conteudo) || [Instruções](#section-instrucoes) || [Notas de versão](#section-changelog) ||

|| [Autores](#section-autores) || [Contato](#section-contato) || [Licença](#section-licenca) ||

</div>

<hr>

<a name="section-conteudo">

## Conteúdo

</a>

<br>

Este repositório armazena um conjunto de snippets necessários para se realizar comandos remotos do Powershell em rede sob Domínio, de forma que o terminal principal (administrador) consiga receber os outputs derivados dos comandos realizados no cliente-alvo. Dessa forma, APIs de integração com o Powershell podem receber naturalmente os outputs dos comandos realizados após os procedimentos.
Este projeto é composto por 3 arquivos principais, localizados em `./scripts`:

'runAs' - Este script habilita o 'runas' para que comandos sejam realizados como administrador

'enableWinRM' - Este script habilita o WinRM (Windows Remote Management), serviço necessário para executar comandos elevados de Powershell em máquinas clientes no Domínio

'example'- Este script mostra um exemplo de como qualquer comando remoto com output deve ser realizado

<a name="section-instrucoes">

## Instruções

</a>

<br>

### Utilizando o repositório como projeto

</a>

Faça um git clone ou o download do repositório, da forma que preferir

```bash

git clone https://github.com/dexdevlab/powershell-runas.git

```

<br>

### Utilizando os scripts

<br>

#### 1. Alterando e executando o script 'runAs'

- Altere a variável `$username` para um nome de usuário com privilégios de Administrador na relação de contas de Domínio

- Altere a senha entre aspas na variável `$password` para a senha correspondente à conta informada  em `$username`

- Execute o comando em um terminal, linha por linha, ou colando de uma vez

**Não foram realizados testes abrindo o script como um aquivo e executando diretamente pelo Powershell. Pode ser que não funcione corretamente dessa maneira.**

O comando irá executar o script 'enableWinRM' naturalmente, desde que o caminho na linha 5 no script 'runAS' coincida com a localização de 'enableWinRM'.

Com isso, o terminal aberto estará pronto para receber quaisquer comandos remotamente e devolverem o output na tela principal.

<br>

#### 2. Execute comandos no modelo do script 'example'

- Insira, nas variáveis `$username` e `$password` os mesmos valores inseridos no script 'runas', conforme tópico anterior

- Insira em `$command` o comando a ser realizado, entre aspas

- Execute o comando em um terminal, linha por linha, ou colando de uma vez

**Não foram realizados testes abrindo o script como um aquivo e executando diretamente pelo Powershell. Pode ser que não funcione corretamente dessa maneira.**

<hr>

<a name="section-changelog">

## Notas de versão

</a>

<br>

### v1.0.0-230310

- Publicação do repositório

<hr>

<a name="section-autores">

## Autores

</a>

<br>

<a href="https://github.com/dexdevlab/powershell-runas/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=dexdevlab/powershell-runas" />
</a>

<hr>

<a name="section-contato">

## Contato

</a>

<br>

Se você gostou deste projeto, dê uma <a href="https://github.com/dexdevlab/powershell-runas" data-icon="octicon-star" aria-label="Star dexdevlab/powershell-runas on GitHub">estrela</a>. <br>
Para contato, envie um email a: <a href="mailto:dex.houshi@hotmail.com">dex.houshi@hotmail.com</a>

<hr>

<a name="section-licenca">

## Licença

</a>

Licenciado sob a [MIT License](https://github.com/dexdevlab/powershell-runas/blob/main/LICENSE).
