# Quickhook on Homebrew

This is a Homebrew [tap][] for the [quickhook][] Git hook runner.

[quickhook]: https://github.com/dirk/quickhook
[tap]: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/brew-tap.md

```sh
brew tap dirk/quickhook
# ==> Tapping dirk/quickhook
# Cloning into '/usr/local/Library/Taps/dirk/homebrew-quickhook'...
# ...
# Tapped 1 formula (26 files, 20.4K)

brew install quickhook
# ==> Installing quickhook from dirk/quickhook
# ...
# /usr/local/Cellar/quickhook/0.1.2: 2 files, 7.0M, built in 7 seconds

quickhook hook pre-commit
# No files to be committed!
```

## License

Released under the MIT license, see [LICENSE](LICENSE) for details.
