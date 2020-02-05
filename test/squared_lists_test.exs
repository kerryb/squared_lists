defmodule SquaredListsTest do
  use ExUnit.Case

  describe "SquaredLists.comp/2" do
    test "returns true when one list consists of the squares of the other" do
      a = [121, 144, 19, 161, 19, 144, 19, 11]
      b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
      assert SquaredLists.comp(a, b)
    end

    test "returns false when one list DOES NOT consist of the squares of the other" do
      a = [121, 144, 19, 161, 19, 144, 19, 11]
      b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]
      refute SquaredLists.comp(a, b)
    end

    test "works with negative numbers" do
      assert SquaredLists.comp([-2, 3, 2], [9, 4, 4])
    end

    test "works with empty lists" do
      assert SquaredLists.comp([], [])
    end
  end
end
