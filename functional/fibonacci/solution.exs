defmodule Solution do
  def fibonacci(1), do: 0
  def fibonacci(2), do: 1
  def fibonacci(n) do
    fibonacci(n - 1) + fibonacci(n - 2)
  end

  def main() do
    IO.gets("")
      |> String.trim
      |> String.to_integer
      |> fibonacci
      |> IO.puts
  end
end

Solution.main()