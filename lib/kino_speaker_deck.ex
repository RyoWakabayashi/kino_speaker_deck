defmodule KinoSpeakerDeck do
  @moduledoc """
  A simple Kino for display Speaker Deck presentations on Livebook.
  """
  use Kino.JS

  def new(deck_url, opts \\ []) do
    case Req.get("https://speakerdeck.com/oembed.json?url=#{deck_url}") do
      {:ok, %Req.Response{status: 200, body: body}} ->
        width = opts[:width] || "100%"
        height = opts[:height] || "auto"

        body
        |> Map.get("html")
        |> String.replace(~r/width="\d*"/, "width=\"#{width}\"")
        |> String.replace(~r/height="\d*"/, "height=\"#{height}\"")
        |> Kino.HTML.new()

      {:ok, _} ->
        Kino.HTML.new("Invalid URL")

      {:error, _} ->
        Kino.HTML.new("Something went wrong")
    end
  end

  asset "main.js" do
    """
    export function init(ctx, iframe) {
      ctx.root.innerHTML = iframe;
    }
    """
  end
end
