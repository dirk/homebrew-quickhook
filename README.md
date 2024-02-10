# Quickhook on Homebrew

This is a Homebrew [tap][] for the [quickhook][] Git hook runner.

[quickhook]: https://github.com/dirk/quickhook
[tap]: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/brew-tap.md

```sh
brew tap dirk/quickhook
# ==> Tapping dirk/quickhook
# Cloning into '/opt/homebrew/Library/Taps/dirk/homebrew-quickhook'...
# ...
# Tapped 1 formula (14 files, 13.2KB).

brew install quickhook
# ==> Fetching dirk/quickhook/quickhook
# ...
# /opt/homebrew/Cellar/quickhook/1.6.2: 5 files, 3.3MB, built in 1 second

quickhook hook pre-commit
# No files to be committed!
```

## License

Released under the MIT license, see [LICENSE](LICENSE) for details.
