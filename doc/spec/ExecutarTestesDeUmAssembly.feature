#language: pt-br

Funcionalidade: Executar testes de um Assembly válido
	Para quando testar um componente
	Enquanto usuário
	Eu gostaria de ver o resultado, se passou ou não, para cada teste

Cenario: Componente sem testes
	Dado Que estou na linha de comando
	E Informo o caminho para um assembly que não tenha testes configurados
	Quando Aciono a funcionalidade Executar
	Entao O resultado exibido é "Não foram encontrados testes"

Cenario: Componente com único teste que passa
	Dado Que estou na linha de comando
	E Informo o caminho para um assembly que contenha o seguinte teste que passa:
        """
        Um teste sem código deve passar
        """
	Quando Aciono a funcionalidade Executar
	Entao O resultado exibido é:
        """
        Executando 1 teste encontrado:

        > Um teste sem código deve passar                        [PASSOU]

        Resumo: 1 teste PASSOU, 0 teste FALHOU
        """

Cenario: Componente com único teste que falha
	Dado Que estou na linha de comando
	E Informo o caminho para um assembly que contenha o seguinte teste que falha:
        """
        Um teste que levanta uma exceção deve falhar
        """
	Quando Aciono a funcionalidade Executar
	Entao O resultado exibido é:
        """
        Executando 1 teste encontrado:

        > Um teste que levanta uma exceção deve falhar            [FALHOU]

        Resumo: 0 teste PASSOU, 1 teste FALHOU
        """

Cenario: Componente com testes que falham e outros que passam deve ordenar os resultados
	Dado Que estou na linha de comando
	E Informo o caminho para um assembly que contenha 3 testes que passam e 2 que falham:
        """
        PASSA: Um número maior que 10 é inválido
        PASSA: A entrada de valor é obrigatória
        PASSA: Copo deve ser informado anteriormente
        FALHA: Bancos devem ser brancos
        FALHA: 1 é menor que A
        """
	Quando Aciono a funcionalidade Exibir
	Entao O resultado exibido é:
        """
        Executando 5 testes encontrados:
        
        > 1 é menor que A                                         [FALHOU]
        > A entrada de valor é obrigatória                        [PASSOU]
        > Bancos devem ser brancos                                [FALHOU]
        > Copo deve ser informado anteriormente                   [PASSOU]
        > Um número maior que 10 é inválido                       [PASSOU]

        Resumo: 3 testes PASSARAM, 2 testes FALHARAM
        """