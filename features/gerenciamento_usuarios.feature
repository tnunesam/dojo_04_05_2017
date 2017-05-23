#language: pt
#utf-8

Funcionalidade: Gerenciar usuários do site Orange HRM
	Como usuario Master do site Orange HRM
	Eu quero gerenciar os usuarios do site

	Contexto: Eu acesso o site Orange HRM
		Dado  que eu acesso o site da Orange HRM
		Quando eu entro com os dados de usuario Master e clico no botão Login
		Então é exibida a tela inicial da aplicação e estou logado como usuario admin da aplicação

	Cenário: Cadastrar um novo empregado na aplicação 
		Quando clicar na opção PIM
		E clicar no botão Add
		E entrar com as informações do empregado a ser cadastrado
		E clicar no botão Save
		Então deverá ser exibida pagina com os dados cadastrados

	Cenário: Editar empregado
		Quando clicar na opção PIM
		E clicar no botão Search
		E clicar no funcionário na grid
		Então deverá ser exibida pagina com os dados cadastrados
		Quando clicar no botão Edit
		E alterar as informações cadastrais desejadas
		E clicar no botão Save
		Então deverá ser exibida pagina com os dados editados