defmodule Demo do
  def bsort(list) do
    t = bsort_iter(list)
    if t == list, do: t, else: bsort(t)
  end

  def bsort_iter([value, head | tail]) when value > head, do: [head | bsort_iter([value | tail])]
  def bsort_iter([value, head | tail]), do: [value | bsort_iter([head | tail])]
  def bsort_iter(list), do: list

end

[11,4,8,9,3,2,1,7,6] |> Demo.bsort() |> IO.inspect()
