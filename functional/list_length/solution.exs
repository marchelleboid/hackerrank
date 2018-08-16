defmodule Solution do
  def main() do
    IO.read(:stdio, :all) 
      |> String.split 
      |> Enum.map(&(String.to_integer(&1)))
      |> Enum.reduce(0, fn(_, acc) -> 1 + acc end) 
      |> IO.puts
  end
end

Solution.main()