# 🍺 GLASTOR® Homebrew Tap

[![CI Test-Bot](https://img.shields.io/badge/CI-test--bot-blue?logo=githubactions&logoColor=white)](https://github.com/glastor-core/homebrew-tap/actions/workflows/tests.yml)
[![OpenSSF Scorecard](https://img.shields.io/badge/OpenSSF-Scorecard_Monitored-blue?logo=securityscorecards&logoColor=white)](https://securityscorecards.dev/viewer/?repo=github.com/glastor-core/homebrew-tap)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)
[![SLSA 3 Provenance](https://img.shields.io/badge/SLSA-Level_3-success.svg)](SECURITY.md)

Official Homebrew Tap for [GLASTOR®](https://glastor.es/) developer tools, high-performance AST engines, and DevSecOps CLIs.

---

## 📦 Available Formulae

| Formula | Version | Description | Platforms | Direct Installation |
| :--- | :--- | :--- | :--- | :--- |
| **[`specter`](https://github.com/glastor-core/specter)** | `v0.2.0` | Polyglot AST API contract differ and SemVer gatekeeper in Rust | macOS (ARM/Intel), Linux (x86_64) | `brew install glastor-core/tap/specter` |
| **[`byte-gauge`](https://github.com/glastor-core/byte-gauge)** | `v0.1.1` | SIMD-accelerated binary security, checksec hardening & SBOM auditor | macOS (ARM/Intel), Linux (x86_64) | `brew install glastor-core/tap/byte-gauge` |
| **[`zerho`](https://github.com/glastor-core/zerho)** | `v1.9.0` | Next-generation documentation engine for Deno & Edge | macOS (ARM/Intel), Linux (x86_64) | `brew install glastor-core/tap/zerho` |

---

## 🚀 Quick Start

### Option 1: Direct Install (One-Liner)

Install any formula directly without explicitly tapping first:

```bash
# Install Specter (AST API Differ & SemVer Gatekeeper)
brew install glastor-core/tap/specter

# Install Byte-Gauge (Binary Hardening & Security Auditor)
brew install glastor-core/tap/byte-gauge

# Install Zerho (Edge Documentation Engine)
brew install glastor-core/tap/zerho
```

### Option 2: Add Tap Repository

Add this tap to your local Homebrew environment to discover and update all GLASTOR tools:

```bash
brew tap glastor-core/tap
```

Then install formulas with short names:

```bash
brew install specter
brew install byte-gauge
brew install zerho
```

---

## 🔄 Updating & Upgrading

To update formulas and upgrade your installed tools to the latest release:

```bash
brew update
brew upgrade specter byte-gauge zerho
```

To verify installations:

```bash
specter --version
byte-gauge --version
zerho --version
```

---

## 💻 Cross-Platform & Windows (WSL) Support

Homebrew runs natively on **macOS** and **Linux**.

For developers on **Windows**:
1. Run Homebrew within **WSL2 (Windows Subsystem for Linux)**:
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   brew tap glastor-core/tap
   ```
2. Windows native binary packages are also distributed in their respective repositories via GitHub Releases and Scoop / WinGet manifests.

---

## 🛡️ Verification & Supply Chain Security

All precompiled release binaries in this tap comply with:
- **SLSA Level 3 Provenance**: Automated cryptographic build attestations.
- **SHA-256 Integrity Checksums**: Verified upon download prior to installation.
- **Binary Hardening Audits**: Pre-scanned with `byte-gauge` for memory safety, Stack Canaries, PIE, RELRO, and non-executable stack (`NX`).

For vulnerability reports, please consult [`SECURITY.md`](SECURITY.md).

---

## 🤝 Contributing

Contributions to formulae, CI automations, and documentation are welcome:

1. Fork this repository and create a branch: `git checkout -b feat/formula-name`.
2. Test formula audits locally:
   ```bash
   brew audit --strict --tap glastor-core/tap Formula/<formula>.rb
   brew test Formula/<formula>.rb
   ```
3. Submit a pull request against `main`.

---

## ⚖️ Legal & Governance

* **Verified Organization**: [glastor.es](https://glastor.es/)
* **Lead Maintainer**: [@glastor-dev](https://github.com/glastor-dev) (GitHub Developer Program Member)
* **Security & Inquiries**: `ventas@glastor.es`

<sub>© 2010–2026 [GLASTOR®](https://glastor.es/) (INPI Reg. 4559568 & 4559567) • Dual-Hub Operations (Spain & Argentina · Export Invoice Factura E) • Led by [@glastor-dev](https://github.com/glastor-dev) (GitHub Developer Program Member).</sub>
