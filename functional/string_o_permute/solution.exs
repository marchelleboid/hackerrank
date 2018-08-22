defmodule Solution do
  def permute([]), do: []
  def permute([first | [second | rest]]) do
    [second | [first | permute(rest)]]
  end

  def main() do
    IO.gets("")
    IO.read(:stdio, :all)
      |> String.split
      |> Enum.map(&(to_charlist(&1)))
      |> Enum.map(&(permute(&1)))
      |> Enum.map(&(to_string(&1)))
      |> Enum.map(&(IO.puts(&1)))
  end
end

Solution.main()