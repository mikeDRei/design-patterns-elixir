defmodule Main do
  import Factory
  def start do
    impala = Factory.create(:impala, %{motor: "V8", color: "Black"})
    Car.constructor(impala)

    dodge = Factory.create(:dodge, %{color: "Red"})
    Car.constructor(dodge) 
  end
end
