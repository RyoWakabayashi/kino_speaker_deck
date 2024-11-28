defmodule KinoSpeakerDeckTest do
  use ExUnit.Case
  doctest KinoSpeakerDeck

  test "greets the world" do
    assert KinoSpeakerDeck.hello() == :world
  end
end
