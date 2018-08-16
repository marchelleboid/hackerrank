defmodule Solution do
  def main() do
    IO.read(:stdio, :all)
      |> String.split
      |> Enum.reduce([], &([&1 | &2]))
      |> Enum.map(&(IO.puts(&1)))
  end
end

Solution.main()