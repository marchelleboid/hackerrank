defmodule Solution do
  def print_it(n, _) when n <= 0 do
  end

  def print_it(n, msg) do
    IO.puts(msg)
    print_it(n - 1, msg)
  end

  def main() do
    IO.gets("")
      |> String.trim
      |> String.to_integer
      |> print_it("Hello World")
  end
end

Solution.main()