# Errant Solutions Homebrew Tap

Free, dependency-free, single-file security-audit CLI tools from
[Errant Solutions](https://errant.solutions), makers of
[Rustinion](https://rustinion.com) (cross-platform device provisioning &
monitoring), [Big Double D](https://oops.codes) (hands-on security-training
labs), and [SSHerpa](https://ssherpa.app) (Android SSH client).

## Install

```sh
brew tap CanuteTheGreat/tap
brew install tls-cert-watchdog
brew install sshd-hardening-auditor
brew install mail-security-auditor
```

## Tools

| Formula | What it does |
|---|---|
| `tls-cert-watchdog` | Checks TLS certificate expiry, weak protocol versions, and common misconfigurations across any number of hosts. |
| `sshd-hardening-auditor` | Audits `sshd_config` (or a live server via `sshd -T`) against CIS Benchmark / NIST-aligned SSH hardening recommendations. |
| `mail-security-auditor` | Audits a domain's SPF, DKIM, DMARC, and MX record hygiene using a built-in stdlib DNS client. |

All tools are single-file Python 3, zero third-party dependencies, MIT-licensed,
free to use with no telemetry.

Source repos live at git.canutethegreat.com (mirrored raw file URLs pinned by
commit hash in each formula for reproducibility).
