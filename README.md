
# PLAT_GetNONCE Reference Implementation

⚠️This sample implementation is provided **strictly for rapid prototyping, testing, and initial customer integration**. It is **not** an official part of the product release and has not been hardened for production environments.

---

## Purpose & Intended Use

To help you get up and running with our crypto product as quickly as possible, we have included this reference implementation for nonce generation. It allows you to validate your end-to-end communication protocols, handshakes, and cryptographic workflows without needing to immediately interface with your platform's production-grade nonce-tracking or entropy mechanisms.

## Production Requirements

For production deployments a predictable, repeatable, or poorly tracked nonce completely undermines the security of cryptographic protocols, making the system highly vulnerable to replay attacks and cryptographic breakdown.

We strongly recommend replacing this reference module with a platform-specific implementation that meets the following criteria:

1. **Strict Non-Repeatability (Uniqueness):** The function must guarantee that the returned value is never reused within the lifetime of the cryptographic context. This can be achieved via a hardened monotonic counter, a secure timestamp, or a high-quality hardware True Random Number Generator (TRNG/CSPRNG) with an adequately large bit-space to eliminate collision risks.
2. **Actively Maintained:** Source the underlying platform security modules from actively maintained, rigorously audited vendor libraries to ensure continuous protection against counter-overflow vulnerabilities or hardware flaws.

---

## API Reference

### `uint64_t PLAT_GetNONCE(void)`
Gets 64 bit of nonce.
