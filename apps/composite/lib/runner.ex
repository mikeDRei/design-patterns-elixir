defmodule Runner do
  def run() do
    ingrediente = Cozinha.ingredientes("Ovos", 2, "unidades")
    ingrediente2 = Cozinha.ingredientes("Farinha", 3, "Colheres")
    ingrediente3 = Cozinha.ingredientes("Fermento", 3, "Colheres")
    Cozinha.prato("Bolo", [ingrediente, ingrediente2, ingrediente3])
  end
end
