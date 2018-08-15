defmodule Solution do
  def gcd(x, y) when x == y do
    x
  end

  def gcd(x, y) when x > y do
    gcd(x - y, y)
  end

  def gcd(x, y) when y > x do
    gcd(x, y - x)
  end

  def gcd([x, y|_]) do
    gcd(x, y)
  end

  def main() do
    IO.gets("")
      |> String.trim
      |> String.split(" ")
      |> Enum.map(&(String.to_integer(&1)))
      |> gcd
      |> IO.puts
  end
end

Solution.main()
