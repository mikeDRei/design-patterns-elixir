defmodule Command do
  def criarArquivo(path, data) do
    IO.puts("Criando arquivo! #{path}")
    IO.puts(~s|echo "#{data}" > #{path}|)
  end

  def undoCriarArquivo(path, _data) do
    IO.puts("Desfazendo a criação do arquivo #{path}!")
    IO.puts("mv #{path} /path/to/trash")
  end

  def deletarArquivo(path) do
    IO.puts("Excluindo arquivo #{path}!")
    IO.puts("mv #{path} /path/to/trash")
  end

  def undoDeletarArquivo(path) do
    IO.puts("Desfazendo exclusão do arquivo #{path}!")
    IO.puts("mv /path/to/trash/#{Path.basename(path)} #{path}")
  end
end
