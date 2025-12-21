# OmniCore Wallet

Enterprise-grade Multi-Chain Smart Wallet Platform for managing crypto assets, multi-signature wallets, global payments, and DeFi integrations.

---

## 🚀 一键部署（3分钟搞定）

**🎯 [查看完整部署指南 →](./START_HERE.md)**

**别折腾了，直接点这个按钮：**

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/hhongli1979-coder/AICHI3LM11.29)

**免费 • 自动 HTTPS • 全球 CDN • 自动部署**

<details>
<summary>📖 为什么不用 Runpod？点这里查看</summary>

Runpod 是为 GPU 计算设计的，不适合部署静态网站：
- ❌ 贵（按小时收费）
- ❌ 复杂（需要配置容器）
- ❌ 不稳定（Pod 可能被回收）

**用 Vercel 的好处：**
- ✅ 完全免费
- ✅ 3分钟部署
- ✅ 自动 HTTPS
- ✅ 全球 CDN
- ✅ 自动部署

[查看详细对比 →](./DONT_USE_RUNPOD.md)
</details>

---

## 🚀 快速部署 / Quick Deploy

### 方法1：Vercel（最简单，3分钟搞定）

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/hhongli1979-coder/AICHI3LM11.29)

点击按钮 → 登录 → 完成！

### 方法2：一键部署脚本

**Linux/Mac:**
```bash
./deploy.sh
```

**Windows:**
```cmd
deploy.bat
```

### 方法3：手动部署
```bash
npm install
npm run build
# 上传 dist/ 文件夹到任何静态托管服务
```

📖 **详细教程**: [3分钟部署指南](./3MIN_DEPLOY.md)

---

## Overview

OmniCore is a comprehensive digital asset management platform that bridges traditional finance with Web3, enabling enterprises to seamlessly manage multi-chain crypto assets, process global payments, and automate treasury operations through an intuitive SaaS interface.

## Features

- **Multi-Signature Wallet Management** - Create and manage multi-sig wallets across multiple blockchains
- **Transaction Approval Workflow** - Multi-level approval system with customizable rules
- **Global Payment Gateway** - Accept payments via crypto, credit cards, Alipay, WeChat Pay, UnionPay
- **DeFi Treasury Automation** - Automated yield farming, staking, and DCA strategies
- **OMNI Token Economy** - Native platform token for fee discounts and governance
- **AI Risk Intelligence** - Real-time transaction risk analysis
- **Organization & Team Management** - Multi-tenant SaaS with role-based permissions
- **Real-Time Dashboard** - Unified view of all assets and analytics

## Tech Stack

- **Frontend**: React 19 + TypeScript
- **Build Tool**: Vite
- **Styling**: Tailwind CSS v4 + Radix Colors
- **UI Components**: shadcn/ui + Radix UI primitives
- **Icons**: Phosphor Icons

## Getting Started

### Prerequisites

- Node.js >= 18

### Installation

```bash
npm install
```

### Development

```bash
npm run dev
```

### Build

```bash
npm run build
```

### Preview

```bash
npm run preview
```

## Project Structure

```
├── src/
│   ├── components/      # UI components
│   │   ├── ui/          # Base shadcn components
│   │   ├── dashboard/   # Dashboard components
│   │   ├── wallet/      # Wallet management
│   │   ├── defi/        # DeFi features
│   │   └── ...
│   ├── lib/             # Utilities, types, mock data
│   ├── styles/          # Global styles and theme
│   └── App.tsx          # Main application
├── public/              # Static assets
├── PRD.md              # Product Requirements Document
└── package.json
```

## Deployment

### 🚀 Quick Deploy (推荐)

**最快方式 - Vercel 一键部署:**

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/hhongli1979-coder/AICHI3LM11.29)

**一键部署脚本 / One-click deployment:**
```bash
./deploy.sh          # Mac/Linux
deploy.bat           # Windows
```

**或者手动:**
```bash
npm install
npm run build
# 上传 dist/ 文件夹到任何静态托管服务
```

### 📖 部署文档

- 🔥 [3分钟部署](./3MIN_DEPLOY.md) - **从这里开始！**
- 📋 [部署选项对比](./WHICH_DEPLOYMENT.md) - 帮你选择最适合的方式
- 💡 [快速部署指南](./QUICK_DEPLOY.md) - 傻瓜式教程
- 📚 [完整部署文档](./DEPLOYMENT.md) - 包含 Runpod、Docker 等所有方式
- 📊 [部署选项总览](./DEPLOYMENT_OPTIONS.md) - 所有方案对比

### 部署选项

| 方式 | 难度 | 时间 | 费用 | 文档 |
|------|------|------|------|------|
| Vercel | ⭐ | 3分钟 | 免费 | [3MIN_DEPLOY.md](./3MIN_DEPLOY.md) |
| Netlify | ⭐ | 3分钟 | 免费 | [3MIN_DEPLOY.md](./3MIN_DEPLOY.md) |
| GitHub Pages | ⭐⭐ | 5分钟 | 免费 | [3MIN_DEPLOY.md](./3MIN_DEPLOY.md) |
| Docker | ⭐⭐⭐ | 10分钟 | VPS费用 | [DEPLOYMENT.md](./DEPLOYMENT.md) |
| Runpod | ⭐⭐⭐⭐⭐ | 15分钟 | 按小时 | [DEPLOYMENT.md](./DEPLOYMENT.md) |

**💡 建议: 用 Vercel，3分钟搞定，完全免费！**

## License

MIT License - see [LICENSE](LICENSE) for details