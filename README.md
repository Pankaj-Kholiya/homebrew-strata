# Homebrew tap for Strata

[Strata](https://stratamaccleaner.com) is a native disk space analyzer and cleaner
for macOS 13 or later: a map of what is on the disk, and the junk, leftovers, AI
models and backups that can go, everything to the Trash with Put Back.

```
brew install --cask pankaj-kholiya/strata/strata
```

Strata updates itself, so `brew upgrade` leaves it alone unless asked with
`--greedy`. `brew uninstall --zap --cask strata` also removes its preferences,
caches and scan snapshots.

The cask is made from each release by `Scripts/homebrewcask.py` in Strata's own
repository and copied here.
