using System.IO;
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
        [Theory(DisplayName = "Arquivo inexistente é inválido")]
        [InlineData("C:\\Arquivo\\invalido.dll")]
        [InlineData(null)]
        [InlineData("")]
        [InlineData("./unix/system/invalido")]
        public void Arquivo_Inexistente_Eh_Invalido(string path)
        {
            // Arrange
            var sut = new Tester();

            // Act
            var expt = Assert.Throws<FileNotFoundException>(() => sut.ValidarArquivo(path));

            // Assert
            Assert.Equal($"O arquivo \"{path}\" não existe.", expt.Message);
        }
    }
}
