#language: pt

Funcionalidade: Autenticacao

Contexto: 
Dado que estou na pagina registrar	
			
Esquema do Cenario: Cadastro Incompleto
	Quando digito o <email>
	E digito a <senha>
	E digito a <confirmacao> da senha
	E aperto o botao registrar
	Então é exibida a <mensagem>
	E o usuario não é registrado

Exemplos:
	| email           | senha | confirmacao | mensagem          |
	|                 | 123   | 456         | Digite o e-mail   |
	| xyz@cin.ufpe.br |       | 123         | Digite a senha    |
    | xyz@cin.ufpe.br | 123   |             | Repita a senha    |

Esquema do Cenario: Senha Invalida
	Quando digito o login xyz
	E digito a <senha> 
	E digito a <confirmacao> de senha
	E aperto o botao registrar
	Entao é exibida a <mensagem> 
	E o usuario não é registrado

Exemplos:
	| senha | confirmacao | mensagem                |
	| 123   | 123         | Senha muito curta       |
    | 123   | 456         | Senhas não correspondem |
	
Esquema do Cenario: Registrar usuario com sucesso			
	Quando digito o login xyz
	E digito a senha 12345678
	E digito a confirmacao de senha 12345678
	E aperto o botao registrar
	Entao sou redirecionado para a pagina registrado	
