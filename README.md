# 🛡️ Secure-GPT: Enterprise Firewall

> **Local DLP for LLM Chat**: Monitor, warn, block, or redact sensitive data in ChatGPT, Google Gemini, Anthropic Claude, and Perplexity.

---

## 📖 Overview

**Secure-GPT** is a browser extension providing real-time, client-side Data Loss Prevention (DLP) across major AI chat interfaces. All detection and redaction occur locally in the browser before prompts or attached documents leave the user's device.

### Supported Platforms
- [ChatGPT](https://chatgpt.com)
- [Google Gemini](https://gemini.google.com)
- [Anthropic Claude](https://claude.ai)
- [Perplexity AI](https://www.perplexity.ai)

---

## ⚡ Key Features

- **Four Response Modes**:
  - **Monitor**: Pass prompts through while logging detected threats and statistics locally.
  - **Warn**: Display interactive alerts allowing users to review flagged sensitive items before submission.
  - **Block**: Intercept and prevent the transmission of high-risk sensitive data.
  - **Redact**: Automatically scrub API keys, credentials, and PII in-place before submission.
- **Advanced Threat Detection Engine (v3)**:
  - High-entropy secrets and token analysis (Shannon entropy gate).
  - Provider-specific API key signatures (OpenAI `sk-proj-`, Slack, GitHub, Stripe, Google AI, JWT, PEM private keys).
  - Credentials in database connection strings (`scheme://user:pass@host`).
  - Personally Identifiable Information (PII) including payment card numbers (with Luhn validation), US SSN, PAN, Aadhaar, bulk phone numbers, and passwords.
  - Base64-encoded secret detection and decoding.
- **Client-Side Document Parsing**:
  - Scans uploaded documents directly in the browser (PDF via `pdf.js`, DOCX via `mammoth.js`, and plain-text formats).
- **Researcher Study Runner**:
  - Includes a built-in benchmark runner (`study/study.html`) with evaluation scenarios for ablation studies and logging.

---

## 🚀 Installation & Usage

1. Clone or download this repository:
   ```bash
   git clone https://github.com/Amu123av/SecureGPT.git
   ```
2. Open your Chromium-based browser (Chrome, Edge, Brave) and navigate to `chrome://extensions/`.
3. Enable **Developer mode** (toggle in the upper-right corner).
4. Click **Load unpacked** and select this directory.
5. Click the extension icon in the toolbar to configure response modes or access the study runner.

---

## 🔒 Privacy & Security

- **Zero Remote Telemetry**: Detection runs entirely in-browser. No prompt text or confidential data is transmitted to external servers.
- **Safe Local Logs**: Logs store event categories, response actions, and detection timings without saving prompt contents.
