defmodule Solution do
  def print_it(n, _) when n <= 0 do
  end

  def print_it(n, msg) do
    IO.puts(msg)
    print_it(n - 1, msg)
  end

  def main() do
    n = IO.gets("")
      |> String.trim
      |> String.to_integer

    IO.read(:stdio, :all)
      |> String.split
      |> Enum.map(&(String.to_integer(&1)))
      |> Enum.map(&(print_it(n, &1)))
  end
end

Solution.main()