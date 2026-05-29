# Homebrew Tap for SecureDBX

Homebrew formulae for [SecureDBX](https://securedbx.com) CLI tools.

## Install

```bash
brew tap AntonAks/tap
brew install sdbx
```

## What is sdbx?

Zero-knowledge file sharing CLI — encrypt files and secrets that self-destruct. End-to-end encrypted, no account needed.

```bash
# Send a file with a PIN
sdbx send myfile.pdf --pin-value 1234

# Receive a file
sdbx receive <file-id> --pin-value 1234

# Send encrypted text
sdbx send --text "my secret message"
```

## Update

```bash
brew upgrade sdbx
```

## More info

- [SecureDBX website](https://securedbx.com)
- [Source code](https://github.com/AntonAks/securedbx)
