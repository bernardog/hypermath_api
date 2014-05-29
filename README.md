# HyperMath API [![wercker status](https://app.wercker.com/status/346efa44e8a5321b36efee3be8ab52bd/s "wercker status")](https://app.wercker.com/project/bykey/346efa44e8a5321b36efee3be8ab52bd) [![Code Climate](https://codeclimate.com/github/bernardog/hypermath_api.png)](https://codeclimate.com/github/bernardog/hypermath_api) [![Code Climate](https://codeclimate.com/github/bernardog/hypermath_api/coverage.png)](https://codeclimate.com/github/bernardog/hypermath_api)

HyperMath,apesar do nome, é uma calculadora estupidamente simples e serve de apenas como projeto de exemplo para demonstração de um desenvolvimento de ambiente de gerência de configuração e mudança, utilizando *hooks* e *policies*, integração contínua e outras práticas.

O projeto se encontra devidido em dois, sendo uma API e uma interface web que a consome. Este projeto é a API, ela foi desenvolvida utilizando o framework para web Rails, utilizando a linguagem Ruby.

# API Online

Esta API se encontra hospedada no endereço http://http://hypermath.heroku-app.com/. 

## 2. Usando a API

A API fornece as seguintes funcionalidades: adição, subtração, divisão e multiplicação entre dois números.

Estas funcionalidades podem ser acessadas pelas rotas:

### 2.1 Soma/Adição
```bash
# Exemplo de parâmetro JSON: {operations: {x: 6, y: 2 }} => Objeto com resultado 8
POST /operations/addition
```

### 2.2 Subtração
```bash
# Exemplo de parâmetro JSON: {operations: {x: 6, y: 2 }} => Objeto com resultado 4
POST /operations/subtract
```

### 2.3 Multiplicação
```bash
# Exemplo de parâmetro JSON: {operations: {x: 6, y: 2 }} => Objeto com resultado 12
POST /operations/multiply
```

### 1.3 Divisão
```bash
# Exemplo de parâmetro JSON: {operations: {x: 6, y: 2 }} => Objeto com resultado 3
POST /operations/divide
```

## 3. Instalação de hooks

Como os hooks no git se encontram na pasta `.git`, eles não são distribuídos ao longo dos outros repositórios. Para isto, foi criado uma pasta `/hooks`, que contém os hooks utilizados neste projeto. Para instalar no seu repositório é simples, basta copiar os arquivos encontrados neste diretório no diretório `.git/hooks`, retirando a sua extensão e o tornando executável.

Por exemplo:

```bash
# Copia o pre-commit.rb do repositório para a pasta de hooks do git
$ cp -s hooks/commit-msg.rb .git/hooks/commit-msg
# Garante que o arquivo é executável
$ chmod +x .git/hooks/commit-msg
```

## Licença

The MIT License (MIT)
Copyright © 2014 Bernardo Gurgel Filho <bernardogfilho@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
