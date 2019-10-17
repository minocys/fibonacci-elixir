defmodule Fib do
  alias Fib.Core

  defdelegate calc(n), to: Core, as: :fib
end
