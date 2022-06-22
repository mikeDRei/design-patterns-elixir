defmodule Cozinha do
  def prato(nome, ingredientes),
    do: {:branch, nome, ingredientes}

  def ingredientes(descricao, quantidade, unidade),
    do: {:leaf, descricao, quantidade, unidade}
end
