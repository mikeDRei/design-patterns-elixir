defmodule UserCreate do
  import UserBuilder
  def create(first_name, last_name, status) do
    user = build()
            |> name(first_name, last_name)
            |> status(status)
  end
end
