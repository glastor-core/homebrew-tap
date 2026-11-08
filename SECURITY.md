# Security Policy

## Supported Formulae & Versions

GLASTOR® Core actively maintains and releases security updates for the following formulae:

| Formula | Supported Version | Security Status |
| :--- | :--- | :--- |
| `specter` | `>= 0.2.0` | Active (Continuous AST & SemVer analysis) |
| `byte-gauge` | `>= 0.1.1` | Active (SIMD binary hardening & checksec) |
| `zerho` | `>= 1.9.0` | Active (Deno / Edge engine) |

---

## Binary Integrity & Provenance

All precompiled binaries distributed via this Homebrew Tap satisfy:
* **Cryptographic SHA-256 validation** on every release asset.
* **SLSA Level 3 Provenance** generated during automated GitHub Actions builds.
* **Binary Hardening Checks**: Verified for `PIE` (Position Independent Executable), `RELRO` (Full/Partial Read-Only Relocations), `Stack Canaries`, and `NX` (Non-Executable Stack) via `byte-gauge`.

---

## Reporting a Vulnerability

If you discover a security vulnerability within this tap or any distributed tool:

1. **Do not create a public issue or pull request.**
2. Report the vulnerability privately via:
   * **Email**: `ventas@glastor.es`
   * **Security Advisory**: [Draft a Security Advisory](https://github.com/glastor-core/homebrew-tap/security/advisories/new)
3. Include the following details:
   * Affected tool and version (`specter`, `byte-gauge`, or `zerho`).
   * Architecture and OS where the issue was observed (`macOS arm64/x64`, `Linux x64/arm64`).
   * Steps or script to reproduce the issue.
   * Proof of Concept (PoC) if applicable.

### Response Time & SLA
* **Initial Response**: Within 24 hours.
* **Triage & Assessment**: Within 48 hours.
* **Fix & Release**: Depending on severity (Critical: < 72 hours).

---

<sub>© 2010–2026 [GLASTOR®](https://glastor.es/) (INPI Reg. 4559568 & 4559567) • Dual-Hub Operations (Spain & Argentina · Export Invoice Factura E) • Led by [@glastor-dev](https://github.com/glastor-dev).</sub>

