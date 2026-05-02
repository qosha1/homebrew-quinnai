# homebrew-quinnai

Homebrew tap for [QuinnAI](https://github.com/qosha1/quinn-ai) — hierarchical AI organization management CLI.

## Install

```bash
brew tap qosha1/quinnai
brew install quinnai
```

This gives you `qn`, `qn-bd`, and `msgr` on your PATH.

## Quick start

```bash
qn org init --ceo-name Alice
qn org start
qn board ui          # opens browser dashboard at localhost:7842
```

## Requirements

- macOS (tested on Sonoma/Sequoia)
- tmux (installed automatically)
- [bd](https://github.com/qosha1/beads) for task tracking

## Formula

- `quinnai` — the main `qn` CLI, `msgr` messenger, and `qn-bd` beads wrapper

## Versioning

This tap tracks releases from [qosha1/quinn-ai](https://github.com/qosha1/quinn-ai).
Current formula: v0.3.1
