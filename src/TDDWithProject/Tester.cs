using System;
using System.IO;

namespace TDDWithProject
{
    // TODO: Renomears
    public class Tester
    {
        public bool ValidarArquivo(string path)
        {
	        throw new FileNotFoundException($"O arquivo \"{path}\" não existe.");

		}
    }
}
