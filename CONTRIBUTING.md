# Contributing to GLASTOR® Homebrew Tap

Thank you for your interest in contributing to the **GLASTOR® Homebrew Tap**.

---

## 🛠️ Adding or Updating Formulae

### 1. General Requirements
* Formula names must be kebab-case (e.g. `byte-gauge.rb`, `specter.rb`).
* Class names must be PascalCase matching the file name (e.g. `ByteGauge`, `Specter`).
* All precompiled binary assets must have verified **SHA-256** checksums matching GitHub Releases.
* Licenses must follow official SPDX identifiers (e.g. `license "Apache-2.0"`).

### 2. Testing Locally
Before submitting a PR, make sure your formula passes strict Homebrew checks:

```bash
# Audit syntax and style
brew audit --strict --tap glastor-core/tap Formula/<formula-name>.rb

# Test installation and test block
brew install --build-from-source Formula/<formula-name>.rb
brew test Formula/<formula-name>.rb
```

---

## 📋 Pull Request Guidelines

1. Create a descriptive branch: `git checkout -b feat/formula-name` or `git checkout -b bump/formula-v1.0.0`.
2. Keep commits concise and follow Conventional Commits (e.g., `feat(formula): add ...`, `chore(specter): bump to 0.2.1`).
3. Fill out the Pull Request template completely.

---

## ⚖️ Legal & Governance

Contributions submitted to this project fall under the [Apache 2.0 License](LICENSE).

<sub>© 2010–2026 [GLASTOR®](https://glastor.es/) (INPI Reg. 4559568 & 4559567) • Dual-Hub Operations (Spain & Argentina) • Led by [@glastor-dev](https://github.com/glastor-dev).</sub>

