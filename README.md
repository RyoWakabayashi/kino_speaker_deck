# KinoSpeakerDeck

[![KinoSpeakerDeck version](https://img.shields.io/hexpm/v/kino_speaker_deck.svg)](https://hex.pm/packages/kino_speaker_deck)
[![Hex Docs](https://img.shields.io/badge/hex-docs-lightgreen.svg)](https://hexdocs.pm/kino_speaker_deck/)
[![Hex Downloads](https://img.shields.io/hexpm/dt/kino_speaker_deck)](https://hex.pm/packages/kino_speaker_deck)
[![LICENSE](https://img.shields.io/hexpm/l/kino_speaker_deck.svg)](https://github.com/RyoWakabayashi/kino_speaker_deck/blob/master/LICENSE)

A simple Kino for display Speaker Deck presentations on Livebook.

## Installation

Install KinoSpeakerDeck in Livebook:

```elixir
Mix.install([
  {:kino_speaker_deck, "~> 0.1"}
])
```

## Usage

Display Speaker Deck presentation on Livebook:

```elixir
KinoSpeakerDeck.new("https://speakerdeck.com/ryowakabayashi/livebookde-wei-xing-detawoxi-u")
```
