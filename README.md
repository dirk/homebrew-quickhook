# Quickhook on Homebrew

This is a Homebrew [tap][] for the [quickhook][] Git hook runner.

[quickhook]: https://github.com/dirk/quickhook
[tap]: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/brew-tap.md

```sh
brew tap dirk/quickhook
# ==> Tapping dirk/quickhook
# Cloning into '/usr/local/Homebrew/Library/Taps/dirk/homebrew-quickhook'...
# ...
# Tapped 1 formula (28 files, 28KB).

brew install quickhook
# ==> Installing quickhook from dirk/quickhook
# ...
# /usr/local/Cellar/quickhook/1.4.0: 3 files, 3.7MB, built in 9 seconds

quickhook hook pre-commit
# No files to be committed!
```

## License

Released under the MIT license, see [LICENSE](LICENSE) for details.
