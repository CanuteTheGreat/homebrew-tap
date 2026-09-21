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
```

## Tools

| Formula | What it does |
|---|---|
| `tls-cert-watchdog` | Checks TLS certificate expiry, weak protocol versions, and common misconfigurations across any number of hosts. |
| `sshd-hardening-auditor` | Audits `sshd_config` (or a live server via `sshd -T`) against CIS Benchmark / NIST-aligned SSH hardening recommendations. |
| `mail-security-auditor` | Audits a domain's SPF, DKIM, DMARC, and MX record hygiene using a built-in stdlib DNS client. |
| `nginx-config-auditor` | Static analyzer for nginx configuration files — no network calls, no dependencies, read-only. |
| `docker-baseline-auditor` | Read-only Docker security baseline checker. |
| `http-header-auditor` | Zero-dependency live HTTP security header scanner. |
| `dns-hygiene-checker` | Finds dangling DNS records / subdomain-takeover risk. |
| `cert-transparency-watcher` | Watches public Certificate Transparency logs for unexpected certs on your domains. |
| `cron-sanity-checker` | Catches broken/misleading cron schedules before they bite you in production. |
| `security-txt-auditor` | Audits `security.txt` and `robots.txt` for a domain. |
| `webhook-sig-verifier` | Verifies webhook HMAC signatures (GitHub, Stripe, Slack, generic) locally, offline. |
| `json-schema-diff` | JSON Schema breaking-change detector, built for API versioning. |
| `aws-waste-finder` | Finds common silent AWS cost waste (requires `pip install boto3` at runtime). |

All tools are single-file Python 3, MIT-licensed, free to use, no telemetry.
Source repos live at git.canutethegreat.com (mirrored raw file URLs pinned by
commit hash in each formula for reproducibility).
