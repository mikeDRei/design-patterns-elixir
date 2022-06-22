defmodule Car do
  def constructor({:impala, motor, color}),
    do: IO.puts("Create impala, engine capacity #{motor} color: #{color}")
  def constructor({:dodge, color}),
    do: IO.puts("Create dodge, color: #{color}")
end

defmodule Factory do
  def create(:impala, %{motor: motor, color: color}), do: {:impala, motor, color}
  def create(:dodge, %{color: color}), do: {:dodge, color}
end
