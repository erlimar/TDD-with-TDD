#language: pt-br

Funcionalidade: Exibir testes em um Assembly válido
	Para antes de testar um componente
	Enquanto usuário
	Eu gostaria de listar os testes contigos em um Assembly válido

Cenario: Componente sem testes
	Dado Que estou na linha de comando
	E Informo o caminho para um assembly que não tenha testes configurados
	Quando Aciono a funcionalidade Exibir
	Entao O resultado exibido é "Não foram encontrados testes"

Cenario: Componente com único teste
	Dado Que estou na linha de comando
	E Informo o caminho para um assembly que contenha o seguinte teste:
        """
        Um número maior que 10 é inválido
        """
	Quando Aciono a funcionalidade Exibir
	Entao O resultado exibido é:
        """
        Foi encontrado 1 teste:

        * Um número maior que 10 é inválido
        """

Cenario: Componente deve ordenar testes alfabeticamente
	Dado Que estou na linha de comando
	E Informo o caminho para um assembly que contenha os seguintes testes:
        """
        Um número maior que 10 é inválido
        A entrada de valor é obrigatória
        Copo deve ser informado anteriormente
        Bancos devem ser brancos
        1 é menor que A
        """
	Quando Aciono a funcionalidade Exibir
	Entao O resultado exibido é:
        """
        Foram encontrados 5 testes:
        
        * 1 é menor que A
        * A entrada de valor é obrigatória
        * Bancos devem ser brancos
        * Copo deve ser informado anteriormente
        * Um número maior que 10 é inválido
        """