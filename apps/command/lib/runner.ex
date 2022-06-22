defmodule Runner do
  def run(path, data) do
    IO.puts("\n ######## CRIAÇÃO ####### \n")

    Command.criarArquivo(path, data)
    Command.undoCriarArquivo(path, data)

    IO.puts("\n ######## EXCLUSÃO ####### \n")
    
    Command.deletarArquivo(path)
    Command.undoDeletarArquivo(path)
  end
end
