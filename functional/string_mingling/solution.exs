defmodule Solution do
  def get_string_from_io() do
    IO.gets("")
      |> String.trim
      |> to_charlist
  end

  def main() do
    get_string_from_io()
      |> Enum.zip(get_string_from_io())
      |> Enum.map(&(to_string(Tuple.to_list(&1))))
      |> Enum.join("")
      |> IO.puts
  end
end

Solution.main()