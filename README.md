<div align="center">

# 🚀 YUVA CAREER CLUB
### Next-Gen Automated Affiliate Marketing, Referral Tracking, 4-Tier Commission Engine & Payout Automation Platform

[![CI Status](https://img.shields.io/badge/CI-passing-brightgreen?style=for-the-badge&logo=github-actions)](.github/workflows/ci.yml)
[![Tests Passing](https://img.shields.io/badge/Acceptance%20Tests-20%2F20%20(100%25)-emerald?style=for-the-badge&logo=checkmarx)](tests/runAllTests.js)
[![Node Version](https://img.shields.io/badge/Node.js-18.x%20%7C%2020.x-339933?style=for-the-badge&logo=node.js)](package.json)
[![Database](https://img.shields.io/badge/SQLite-WebAssembly%20(sql.js)-003B57?style=for-the-badge&logo=sqlite)](database/schema.sql)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)

<br/>

**A secure, production-ready, mathematical integer-precision Affiliate Marketing and Referral Management System built for Yuva Career Club.**  
Covers online courses, offline bootcamps, academic subscriptions, digital skill certifications, and institutional training programs.

[Explore Live Demo (http://localhost:3000)](http://localhost:3000) &bull; [API Documentation](docs/API_DOCUMENTATION.md) &bull; [Commission Guide](docs/COMMISSION_CALCULATION_DOC.md) &bull; [Admin Manual](docs/ADMIN_USER_MANUAL.md)

</div>

---

## 🌟 Executive Summary & Core Innovations

### 1. Zero-Code Automatic Attribution
- **No Manual Coupon or Promo Code Required**: Customers are **never** forced to remember or type an affiliate code at checkout.
- **30-Day Cryptographic Attribution**: Captures referral clicks on first touch, issues an HttpOnly signed JWT token (`yuva_aff_token`), and preserves attribution across all pages, registrations, and payment gateways.
- **Universal 1-Link Engine**: Affiliates receive a single master link (e.g., `/r/partner-000001` or `/r/campus-dtu`) that automatically applies to **100% of all courses and programs** on the website.
- **Course-Specific Direct Links**: Auto-provisions distinct tracking links for every course, allowing targeted promotion.
- **1-Click Shareability**: Native one-click buttons for **WhatsApp**, **Telegram**, **Copy Link**, and **Dynamic High-Contrast QR Code** generation.

### 2. 100% Complete Affiliate Anonymity
- **No Identity Leakage**: Buyers **never** see the affiliate's legal name, phone number, college roll number, or bank details.
- **Collision-Resistant Partner IDs**: Clean anonymous identifiers (`YCC-AF-xxxxxx`, `YCC-CR-xxxxxx`, `YCC-MA-xxxxxx`, `YCC-PMA-xxxxxx`) or custom anonymous slugs.

### 3. 4-Tier Hierarchical Overrides & Budget Enforcer
```
  [Super Admin / Platform]
             │
             ▼
 [Power Master Affiliate]  ─── Tier 4: Multi-State Executive Network (1.0% Override)
             │
             ▼
    [Master Affiliate]     ─── Tier 3: Regional Institutional Hub (1.5% Override)
             │
             ▼
   [College Coordinator]   ─── Tier 2: Campus Faculty Leader (2.0% Override)
             │
             ▼
    [Student Affiliate]    ─── Tier 1: Direct Campus Promoter (10.0% Direct Commission)
```
- **Course Budget Ceiling**: If the cumulative multi-tier commission exceeds a course's `max_commission_budget_paise`, the platform applies proportional scaling so total commission **never** exceeds the approved budget ceiling.
- **Strict Integer Paise Arithmetic**: All financial calculations are computed and stored in **Integer Paise** ($₹1.00 = 100\text{ paise}$) — absolutely zero IEEE-754 floating-point inaccuracies.
- **Section 194H TDS Compliance**: 5.0% statutory TDS withheld for verified PAN, 20.0% Section 206AA withholding if PAN is missing.
- **Double-Entry Append-Only Ledger**: 37 normalized relational tables; immutable snapshots of commission rule versions with 15-day refund hold periods.

---

## 👥 User Roles & Access Control

| Role | Demo Email (Password: `Password@123`) | Scope & Permissions |
| :--- | :--- | :--- |
| **Super Admin** | `admin@yuvacareer.com` | Complete system governance, commission plans, course budgets, affiliate approvals. |
| **Power Master Affiliate** | `powermaster@yuvacareer.com` | Multi-state network intelligence, downline master partners & coordinators, 1.0% overrides. |
| **Master Affiliate** | `master@yuvacareer.com` | Regional institutional hubs, assigned campus coordinators, 1.5% override earnings. |
| **College Coordinator** | `coordinator@dtu.ac.in` | Campus student affiliate roster, institution metrics, 2.0% coordinator overrides. |
| **Student Affiliate** | `rahul.sharma@gmail.com` | Universal & course referral links, 1-click WhatsApp/Telegram/QR, balance & ledger. |
| **Support Team** | `support@yuvacareer.com` | Support desk ticketing console, affiliate queries, ticket status transitions. |
| **Finance Admin** | `finance@yuvacareer.com` | Maker-checker payout batches, ₹500 minimum threshold enforcement, reconciliation. |
| **Auditor** | `auditor@yuvacareer.com` | Read-only compliance portal, immutable financial ledger, audit trail logs. |

---

## ⚡ Quick Start Guide

### Prerequisites
- Node.js LTS v18.x or v20.x
- npm v9+

### 1. Clone & Install
```bash
git clone https://github.com/your-username/yuva-career-affiliate-platform.git
cd yuva-career-affiliate-platform
npm install
```

### 2. Environment Configuration
Copy `.env.example` to `.env`:
```bash
cp .env.example .env
```
Key environment variables:
```ini
PORT=3000
NODE_ENV=production
JWT_SECRET=yuva_career_attribution_secret_key_2026
WEBHOOK_SECRET=rzp_test_secret_key_yuva_2026
```

### 3. Initialize & Seed Database
```bash
npm run seed
```
Creates all 37 normalized relational tables and provisions the sample hierarchy, courses, rules, and demo accounts.

### 4. Run Comprehensive 20-Scenario Acceptance Test Suite
```bash
npm test
```
Verifies all 20 business scenarios (integer math, idempotency, maker-checker approvals, partial refunds, self-approval prevention, TDS withholding, etc.) with a **100% pass rate**.

### 5. Start Application Server
```bash
npm start
```
The application will launch on:
👉 **`http://localhost:3000`**

---

## 🧪 Verified Acceptance Scenarios (20/20 Passing)

| Scenario | Validation Description | Status |
| :---: | :--- | :---: |
| **01** | 10% of ₹1,000 = ₹100 (Integer Paise Precision) | `PASS` |
| **02** | 15% of ₹900 = ₹135 (Integer Paise Precision) | `PASS` |
| **03** | Fixed commission of ₹150 = ₹150 | `PASS` |
| **04** | Duplicate payment webhook does not duplicate commission (Idempotency) | `PASS` |
| **05** | Failed payment creates no payable commission | `PASS` |
| **06** | Fully refunded order triggers configured reversal | `PASS` |
| **07** | Partial refund applies documented adjustment (50% refund = 50% reversal) | `PASS` |
| **08** | Affiliate cannot approve their own payout (Anti-Self-Approval) | `PASS` |
| **09** | An unapproved affiliate cannot receive commissions | `PASS` |
| **10** | Two simultaneous payout requests cannot pay the same balance twice | `PASS` |
| **11** | An incorrect UPI ID or bank account is held for verification | `PASS` |
| **12** | A failed payout can be retried safely | `PASS` |
| **13** | Changing a commission rule does not change historical transactions | `PASS` |
| **14** | Total payout cannot exceed approved available balance | `PASS` |
| **15** | Unauthorized users cannot view another affiliate's financial information | `PASS` |
| **16** | Commission stacking cannot occur accidentally | `PASS` |
| **17** | Tax withholding applied only under approved rules (5% with PAN / 20% without) | `PASS` |
| **18** | Provider fees and refunds are reflected correctly in profitability reports | `PASS` |
| **19** | QR codes resolve to correct approved referral destination | `PASS` |
| **20** | Reconciliation detects missing, duplicated or mismatched transactions | `PASS` |

---

## 🏗️ Repository Structure

```
yuva-career-affiliate-platform/
├── .github/
│   └── workflows/
│       └── ci.yml               # Automated CI test pipeline (Node 18 & 20)
├── database/
│   ├── db.js                    # sql.js WebAssembly SQLite wrapper & auto-persistence
│   ├── schema.sql               # 37 normalized relational tables schema
│   └── seed.js                  # Initial demo data & hierarchy seeder
├── docs/                        # Complete Enterprise Documentation Suite
│   ├── ADMIN_USER_MANUAL.md
│   ├── AFFILIATE_USER_MANUAL.md
│   ├── API_DOCUMENTATION.md
│   ├── COMMISSION_CALCULATION_DOC.md
│   ├── DEPLOYMENT_AND_BACKUP_GUIDE.md
│   ├── PAYOUT_AND_RECONCILIATION_SOP.md
│   ├── PRIVACY_POLICY_AND_TERMS.md
│   └── SECURITY_CHECKLIST.md
├── public/                      # AI Cyber Visual Frontend
│   ├── index.html               # Responsive SPA container with Role Switcher
│   └── js/
│       └── app.js               # SPA logic, dynamic dashboards, QR code renderer
├── src/
│   ├── middleware/              # Auth & RBAC role guards
│   ├── routes/                  # Express API routes
│   │   ├── admin.routes.js
│   │   ├── affiliate.routes.js
│   │   ├── auth.routes.js
│   │   ├── coordinator.routes.js
│   │   ├── finance.routes.js
│   │   ├── network.routes.js    # Master & Power Master hierarchy hub
│   │   ├── order.routes.js      # Storefront checkout & /r/:slug redirect
│   │   └── support.routes.js    # Support desk ticketing
│   ├── services/
│   │   ├── attributionService.js
│   │   ├── commissionEngine.js  # 4-tier engine with course budget caps
│   │   ├── paymentService.js    # Razorpay/Cashfree webhook HMAC-SHA256
│   │   ├── payoutService.js     # Maker-checker payout approval batches
│   │   ├── profitabilityService.js
│   │   └── refundService.js
│   └── server.js                # Express app entry point
├── tests/
│   └── runAllTests.js           # 20 Automated Acceptance Criteria Scenarios
├── .env.example
├── .gitignore
├── CONTRIBUTING.md
├── LICENSE                      # MIT License
├── package.json
└── README.md
```

---

## 🔒 Security & Compliance

- **Zero Float Inaccuracy**: Integers are strictly used for currency storage (`subtotal_paise`, `gross_commission_paise`, `tds_withheld_paise`, etc.).
- **HMAC-SHA256 Webhooks**: Payment gateway webhooks require validated cryptographic signatures using constant-time comparison buffers.
- **Maker-Checker Segregation**: Batches over ₹10,000 mandate dual sign-off. Self-approvals trigger automatic system rejection.
- **Identity Privacy**: Student affiliates and coordinators are completely anonymous to learners on the storefront.
- **Statutory Tax Compliance**: Section 194H TDS withholding automated at source.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).  
Copyright © 2026 **Yuva Career Club**. All rights reserved.
