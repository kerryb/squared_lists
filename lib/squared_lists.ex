defmodule SquaredLists do
  def comp(a, b), do: a |> Enum.map(&square/1) |> Enum.sort() == b |> Enum.sort()

  defp square(a), do: a * a
end
