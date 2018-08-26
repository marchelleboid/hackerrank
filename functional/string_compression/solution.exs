defmodule Solution do
  def compress([], result, []) do
    result
  end
  def compress([], result, [head2]) do
    [head2 | result]
  end
  def compress([], result, [head2 | tail2]) do
    [length(tail2) + 1 | [head2 | result]]
  end
  def compress([head | tail], result, []) do 
    compress(tail, result, [head])
  end
  def compress([head | tail], result, [head2 | tail2]) when head == head2 do
    compress(tail, result, [head | [head2 | tail2]])
  end
  def compress([head | tail], result, [head2]) do
    compress(tail, [head2 | result], [head])
  end
  def compress([head | tail], result, [head2 | tail2]) do
    compress(tail, [length(tail2) + 1 | [head2 | result]], [head])
  end

  def main() do
    IO.gets("")
      |> String.trim
      |> String.graphemes
      |> compress([], [])
      |> Enum.reverse
      |> Enum.join
      |> IO.puts
  end
end

Solution.main()