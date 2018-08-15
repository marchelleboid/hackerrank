defmodule Solution do
  def main() do
    n = IO.gets("")
      |> String.trim
      |> String.to_integer

    IO.read(:stdio, :all)
      |> String.split
      |> Enum.map(&(String.to_integer(&1)))
      |> Enum.filter(&(&1 < n))
      |> Enum.map(&(IO.puts(&1)))
  end
end

Solution.main()