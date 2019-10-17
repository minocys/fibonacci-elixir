defmodule Fib.Core do
  alias Cache.Store

  def fib(n) do
    calculate_next_sequence(Store.get(n), n)
  end

  defp calculate_next_sequence(nil, n) when n in 0..1 do
    Store.set(n, n)
    n
  end
  defp calculate_next_sequence(nil, n) do
    v = fib(n - 1) + fib(n - 2)
    Store.set(n, v)
    v
  end
  defp calculate_next_sequence(v, _n), do: v
end
