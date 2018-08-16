defmodule Solution do
  def main() do
    IO.read(:stdio, :all) 
      |> String.split 
      |> Enum.map(&(String.to_integer(&1)))
      |> Enum.map(&(abs(&1))) 
      |> Enum.map(&(IO.puts(&1)))
  end
end

Solution.main()