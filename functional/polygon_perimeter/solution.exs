defmodule Solution do
  def rotate_left_one([head | tail]) do
    tail ++ [head]
  end

  def first_number([head | _]) do
    String.to_integer(head)
  end

  def second_number(pair) do
    pair
      |> Enum.at(-1)
      |> String.to_integer
  end

  def main() do
    IO.gets("")
    split_input = IO.read(:stdio, :all) 
      |> String.split("\n")
      |> Enum.drop(-1)
      |> Enum.map(&(String.split(&1, " ")))
    Enum.zip(split_input, rotate_left_one(split_input))
      |> Enum.map(fn {first_pair, second_pair} ->
        :math.sqrt(
          :math.pow(first_number(second_pair) - first_number(first_pair), 2) +
          :math.pow(second_number(second_pair) - second_number(first_pair), 2))
      end)
      |> Enum.sum
      |> IO.puts
  end
end

Solution.main()
