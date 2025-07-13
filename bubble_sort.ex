defmodule Sort do
  def bsort(list) when is_list(list) do
    t = bsort_iter(list)
    (t == list) |> maybe_sort_again(t)
  end
  def bsort_iter([value, head | tail]) when value > head, do: [head | bsort_iter([value | tail])]
  def bsort_iter([value, head | tail]), do: [value | bsort_iter([head | tail])]
  def bsort_iter(list), do: list
  def maybe_sort_again(false, list), do: bsort(list)
  def maybe_sort_again(true, list), do: list
end

[1,7,4,3,5,6,2,8] |> Sort.bsort() |> IO.inspect()
