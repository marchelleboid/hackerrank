defmodule Solution do
  def get_integer_list() do
    IO.gets("")
      |> String.trim
      |> String.split(" ")
      |> Enum.map(&(String.to_integer(&1)))
  end

  def discrete_values([low | [high | _]]) do
    length = trunc((high - low) / 0.001)
    0..length
      |> Enum.map(&(&1 * 0.001 + low))
  end

  def apply_function(value, coefficients) do
    coefficients
      |> Enum.map(&(:math.pow(value, elem(&1, 1)) * elem(&1, 0)))
      |> Enum.sum
  end

  def integrate_and_rotate(values, coefficients) do
    values
      |> Enum.map(&(apply_function(&1, coefficients)))
      |> Enum.reduce({0, 0}, &({elem(&2, 0) + &1 * 0.001, 
                                elem(&2, 1) + &1 * &1 * 0.001 * :math.pi}))
  end

  def print_area_volume(pair) do
    IO.puts(elem(pair, 0))
    IO.puts(elem(pair, 1))
  end

  def main() do
    coefficients = get_integer_list()
      |> Enum.zip(get_integer_list())

    get_integer_list()
      |> discrete_values
      |> integrate_and_rotate(coefficients)
      |> print_area_volume

  end
end

Solution.main()