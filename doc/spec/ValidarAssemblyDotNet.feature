#language: pt-br

Funcionalidade: Validar Assembly .NET
	Para antes de testar um componente
	Enquanto usuário
	Eu gostaria de validar um Assembly .NET

Cenario: Arquivo que não é DLL é inválido
	Dado Que estou na linha de comando
	E Informo o caminho para um arquivo não DLL
	Quando Aciono a funcionalidade Validar
	Entao O resultado exibido é FALSO ("O arquivo não é um Assembly .NET válido")

Cenario: Arquivo que é DLL nativa é inválido
	Dado Que estou na linha de comando
	E Informo o caminho para um arquivo DLL nativa
	Quando Aciono a funcionalidade Validar
	Entao O resultado exibido é FALSO ("O arquivo não é um Assembly .NET válido")

Cenario: Arquivo inexistente é inválido
	Dado Que estou na linha de comando
	E Informo o caminho para um arquivo inexistente
	Quando Aciono a funcionalidade Validar
	Entao O resultado exibido é FALSO ("O arquivo não existe")

Cenario: Diretório é inválido
	Dado Que estou na linha de comando
	E Informo o caminho para um diretório
	Quando Aciono a funcionalidade Validar
	Entao O resultado exibido é FALSO ("O caminho não aponta para um arquivo mas para um diretório")

Cenario: Arquivo que é DLL do .NET é válido
	Dado Que estou na linha de comando
	E Informo o caminho para um arquivo DLL do .NET
	Quando Aciono a funcionalidade Validar
	Entao O resultado exibido é VERDADEIRO ("O arquivo é um Assembly .NET válido")