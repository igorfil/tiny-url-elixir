defmodule TinyUrlTest do
  use ExUnit.Case
  doctest TinyUrl

  test "tiny given empty returns empty" do
    assert TinyUrl.tiny("") == ""
  end

  test "tiny can generate tiny url" do
    assert TinyUrl.tiny("abc") == "ddaf35a193"
    assert TinyUrl.tiny("www.google.com") == "01830d11b1"
  end
end
