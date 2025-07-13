defmodule Demo do

  def factorial(0), do: 1
  def factorial(n) when is_number(n) and n > 0, do: n * factorial(n - 1)
  def factorial(_), do: nil

end

6 |> Demo.factorial |> IO.inspect()
