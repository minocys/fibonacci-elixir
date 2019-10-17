defmodule Cache.Store do
  @key __MODULE__

  def start() do
    Agent.start_link(
      fn -> %{} end,
      name: @key
    )
  end

  def set(k, v) do
    Agent.update(
      @key,
      &(Map.put(&1, k, v))
    )
  end

  def get(k) do
    Agent.get(
      @key,
      &(Map.get(&1, k))
    )
  end
end
