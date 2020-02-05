defmodule SquaredLists do
  def comp(a, b) do
    a |> Enum.map(&(&1 * &1)) |> Enum.sort() == b |> Enum.sort()
  end
end
