defmodule Insertion do
  @moduledoc false
  def sort(list) when is_list(list) and length(list) <= 1 do
    list
  end

  def sort(list) when is_list(list) do
    [first_elem | rest] = list
    insert(first_elem, sort(rest))
  end

  defp insert(e, []) do
    [e]
  end

  defp insert(e, [min|rest]) do
    cond do
      min >= e -> [e,min|rest]
      true -> [min|insert(e, rest)]
    end
  end

end
IO.inspect Insertion.sort([1, 2, 100, 3, 4, 1, 200, 45, 6, 10])