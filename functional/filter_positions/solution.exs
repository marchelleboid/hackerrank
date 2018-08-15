defmodule Solution do
  def main() do
    IO.read(:stdio, :all)
      |> String.split
      |> Enum.drop(1)
      |> Enum.map_every(2, &(IO.puts(&1)))
  end
end

Solution.main()