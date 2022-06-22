defmodule Singleton do
  use GenServer

  @name :singleton

  @initial_value "valor inicial"

  def start_link,
    do: GenServer.start_link(__MODULE__, @initial_value, name: @name)

  def value,
    do: GenServer.call(@name, :read)

  def update(value),
    do: GenServer.call(@name, {:write, value})

  def handle_call(:read, _from, value),
    do: {:reply, value, value}

  def handle_call({:write, value}, _from, _old_value),
    do: {:reply, :ok, value}
end

Singleton.start_link()

Singleton.value() |> IO.puts()
Singleton.update("novo valor")
Singleton.value() |> IO.puts()
