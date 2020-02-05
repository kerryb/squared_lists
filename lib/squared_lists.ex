defmodule SquaredLists do
  def comp(a, b) when is_nil(a) or is_nil(b), do: false
  def comp(a, b), do: a |> Enum.map(&square/1) |> Enum.sort() == b |> Enum.sort()

  defp square(a), do: a * a
end
