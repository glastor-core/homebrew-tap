# 🍺 GLASTOR® Homebrew Tap

Official Homebrew Tap for [GLASTOR®](https://glastor.es/) developer tools, high-performance AST engines, and DevSecOps CLIs.

---

## 📦 Available Formulae

| Formula | Description | Installation |
| :--- | :--- | :--- |
| **[`specter`](https://github.com/glastor-core/specter)** | Polyglot AST API contract differ and SemVer gatekeeper in Rust | `brew install glastor-core/tap/specter` |
| **[`byte-gauge`](https://github.com/glastor-core/byte-gauge)** | SIMD-accelerated binary security, checksec hardening and SBOM auditor | `brew install glastor-core/tap/byte-gauge` |
| **[`zerho`](https://github.com/glastor-core/zerho)** | Next-generation documentation engine for Deno & Edge | `brew install glastor-core/tap/zerho` |

---

## 🚀 Quick Start

### Option 1: Direct Install (One-Liner)

Install any tool directly without tapping first:

```bash
# Install Specter (AST API Differ)
brew install glastor-core/tap/specter

# Install Byte-Gauge (Binary Security & Hardening Auditor)
brew install glastor-core/tap/byte-gauge

# Install Zerho (Documentation Engine)
brew install glastor-core/tap/zerho
```

### Option 2: Tap the Repository

Add this tap to your local Homebrew installation to discover and update all GLASTOR tools:

```bash
brew tap glastor-core/tap
```

Then install any formula directly:

```bash
brew install specter
brew install byte-gauge
brew install zerho
```

---

## 🔄 Keeping Up to Date

Upgrade your installed GLASTOR tools to the latest release:

```bash
brew update
brew upgrade specter byte-gauge zerho
```

---

## 🛡️ Verification & Security

All precompiled binaries in this tap are:
- Audited with **SLSA Level 3 Provenance**
- Verified against cryptographic **SHA-256** integrity checksums
- Scanned for memory safety and zero-day trojan vulnerabilities

To verify a tool installation:

```bash
specter --version
byte-gauge --version
zerho --version
```

---

## ⚖️ Legal & Governance

* **Verified Domain**: [glastor.es](https://glastor.es/)
* **Lead Maintainer**: [@glastor-dev](https://github.com/glastor-dev) (GitHub Developer Program Member)
* **Security & Inquiries**: `ventas@glastor.es`

© 2010–2026 [GLASTOR®](https://glastor.es/) (INPI Reg. 4559568 & 4559567) • Dual-Hub Operations (Spain & Argentina · Export Invoice Factura E) • Led by [@glastor-dev](https://github.com/glastor-dev) (GitHub Developer Program Member).
