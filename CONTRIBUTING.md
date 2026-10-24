# Contributing to Yuva Career Affiliate Platform

Thank you for your interest in contributing to the **Yuva Career Club Automatic Affiliate & Referral Management Platform**.

## Code of Conduct & Core Architectural Principles

All contributions must strictly adhere to the project's financial and security guarantees:

1. **Integer Paise Currency Precision**:
   - Never use floating-point math for money (`basePaise * 100`, never `Math.round(fee * 0.10)` using floats).
   - All database columns and API payloads representing monetary figures must be in integer paise ($₹1.00 = 100\text{ paise}$).
2. **Immutable Double-Entry Ledger**:
   - The `commission_ledger` table is write-once and append-only. Never mutate historical gross or net amounts directly. Use counter-entry reversals.
3. **Strict Information Boundary & Privacy**:
   - Affiliate personal real legal identities, phone numbers, and bank account numbers must **never** be leaked in customer-facing links or storefront checkouts.
   - Only anonymous partner codes (`YCC-AF-xxxxxx`) or anonymized vanity slugs are permitted.
4. **Maker-Checker Segregation**:
   - Never permit self-approvals of payouts.
   - Payout batches exceeding ₹10,000 require independent secondary approval.
5. **Zero-Code Attribution**:
   - Never require customers to manually enter coupon or referral codes. Attribution must always be resolved via the 30-day HttpOnly signed JWT token or server-side cookies.

## Development Workflow

1. Fork and clone the repository.
2. Install dependencies:
   ```bash
   npm install
   ```
3. Initialize the database seed:
   ```bash
   npm run seed
   ```
4. Run the comprehensive automated acceptance test suite:
   ```bash
   npm test
   ```
   **All 20 test scenarios must pass (100%) before submitting any pull request.**
5. Start local server:
   ```bash
   npm start
   ```

## Pull Request Guidelines

- Branch naming: `feature/short-description` or `fix/short-description`.
- Commit messages: Follow conventional commits (`feat:`, `fix:`, `docs:`, `test:`).
- Verify that GitHub Actions CI passes without warnings.
