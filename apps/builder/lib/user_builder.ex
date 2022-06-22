defmodule UserBuilder do
  def build, do: %User{}

  def name(user, first_name, last_name), 
    do: %{user | first_name: first_name, last_name: last_name}

  def status(user, status),
    do: %{user | status: status}  
end
