defmodule Solution do
  def factorial(0), do: 1
  def factorial(n) do
    Enum.reduce(1..n, 1, &(&1 * &2))
  end

  def e_to_the_power_of(x) do
    Enum.reduce(0..9, 0, &(&2 + :math.pow(x, &1)/factorial(&1)))
  end

  def main() do
    IO.gets("")
    IO.read(:stdio, :all)
      |> String.split
      |> Enum.map(&(String.to_float(&1)))
      |> Enum.map(&(e_to_the_power_of(&1)))
      |> Enum.map(&(IO.puts &1))
  end
end

Solution.main()
