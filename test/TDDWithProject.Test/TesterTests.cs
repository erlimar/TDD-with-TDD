using Xunit;

namespace TDDWithProject.Test
{
    [Trait("Target", nameof(Tester))]
    [Trait("Module", "TDDWithProject")]
    [Trait("Feature", "Validar Assembly .NET")]
    public class TesterTests
    {
        /*
        Cenario: Arquivo inexistente é inválido
            Dado Que estou na linha de comando
            E Informo o caminho para um arquivo inexistente
            Quando Aciono a funcionalidade Validar
            Entao O resultado exibido é FALSO ("O arquivo não existe")
        */
        [Fact(DisplayName = "Arquivo inexistente é inválido")]
        public void Arquivo_Inexistente_Eh_Invalido()
        {
            // Arrange
            var path = "C:\\Arquivo\\invalido.dll";
            var sut = new Tester();

            // Act
            bool resultado = sut.ValidarArquivo(path);

            // Assert
            Assert.False(resultado);
        }
    }
}
