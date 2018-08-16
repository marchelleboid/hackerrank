defmodule Solution do
  require Integer
  
  def main() do
    IO.read(:stdio, :all) 
      |> String.split 
      |> Enum.map(&(String.to_integer(&1)))
      |> Enum.filter(&(Integer.is_odd(&1))) 
      |> Enum.reduce(0, &(&1 + &2)) 
      |> IO.puts
  end
end

Solution.main()