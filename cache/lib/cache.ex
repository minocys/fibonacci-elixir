defmodule Cache do
  alias Cache.Store

  defdelegate start(), to: Store
  defdelegate get(), to: Store
  defdelegate set(), to: Store
end
