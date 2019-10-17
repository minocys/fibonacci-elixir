defmodule FibTest do
  use ExUnit.Case

  test "It should calculate the fib of 0" do
    assert Fib.calc(0) == 0
  end

  test "It should calculate the fib of 1" do
    assert Fib.calc(1) == 1
  end

  test "It should calculate the fib of 2" do
    assert Fib.calc(2) == 1
  end

  test "It should calculate the fib of 3" do
    assert Fib.calc(3) == 2
  end

  test "It should calculate the fib of 20" do
    assert Fib.calc(20) == 6765
  end
end
