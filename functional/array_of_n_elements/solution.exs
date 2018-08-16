defmodule Solution do
  def main() do
    n = IO.gets("")
      |> String.trim
      |> String.to_integer
    IO.inspect((for y <- Range.new(1,n), do: y), limit: :infinity)
  end
end

Solution.main()