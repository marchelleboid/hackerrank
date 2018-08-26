defmodule Solution do
  def read_graphemes() do
    IO.gets("")
      |> String.trim
      |> String.graphemes
  end

  def reverse_and_join(list) do
    list
      |> Enum.reverse
      |> Enum.join
  end
  
  def compress([], [], prefix, xprime, yprime) do
    [prefix, xprime, yprime]
      |> Enum.map(&(reverse_and_join(&1)))
  end

  def compress([], [head2 | tail2], prefix, xprime, yprime) do
    compress([], tail2, prefix, xprime, [head2 | yprime])
  end

  def compress([head1 | tail1], [], prefix, xprime, yprime) do
    compress(tail1, [], prefix, [head1 | xprime], yprime)
  end

  def compress([head1 | tail1], [head2 | tail2], prefix, [], []) when head1 == head2 do
    compress(tail1, tail2, [head1 | prefix], [], [])
  end

  def compress([head1 | tail1], [head2 | tail2], prefix, xprime, yprime) do
    compress(tail1, tail2, prefix, [head1 | xprime], [head2 | yprime])
  end

  def main() do
    read_graphemes()
      |> compress(read_graphemes(), [], [], [])
      |> Enum.map(&(IO.puts("#{String.length(&1)} #{&1}")))
  end
end

Solution.main()