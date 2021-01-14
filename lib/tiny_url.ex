defmodule TinyUrl do
  @moduledoc """
  Documentation for `TinyUrl`.
  """

  @doc """
  Hello world.

  """
  def tiny(url) do
    cond do
      url == "" ->
        ""

      url != "" ->
        :crypto.hash(:sha512, url)
        |> Base.encode16()
        |> String.downcase()
        |> String.slice(0, 10)
    end
  end
end
