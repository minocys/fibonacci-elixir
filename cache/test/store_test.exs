defmodule CacheTest do
  use ExUnit.Case

  alias Cache.Store

  test "should start a persistent cache" do
    assert {:ok, pid} = Store.start()
    assert is_pid(pid)
  end

  test "should save key value pairs" do
    Store.start()
    assert Store.set("key", "value!") == :ok
  end

  test "should retrieve values by key" do
    Store.start()
    Store.set("key", "value!")
    assert Store.get("key") == "value!"
  end
end
