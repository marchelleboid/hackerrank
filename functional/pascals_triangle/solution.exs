defmodule Solution do
  def length_list(n), do: 0..(n-1)

  def factorial(0), do: 1
  def factorial(n) do
    Enum.reduce(1..n, 1, &(&1 * &2))
  end

  def value_at(_, 0), do: 1
  def value_at(row, column) when row == column, do: 1
  def value_at(row, column) do
    div(factorial(row), (factorial(column) * factorial(row - column)))
  end

  def pascal_row(row_number) do
    Enum.map(0..row_number, &(value_at(row_number, &1)))
  end

  def main() do
    IO.gets("")
      |> String.trim
      |> String.to_integer
      |> length_list
      |> Enum.map(&(pascal_row(&1)))
      |> Enum.map(&(Enum.join(&1, " ")))
      |> Enum.map(&(IO.puts(&1)))
  end
end

Solution.main()