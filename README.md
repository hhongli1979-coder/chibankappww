# OmniCore Wallet

Enterprise-grade Multi-Chain Smart Wallet Platform for managing crypto assets, multi-signature wallets, global payments, and DeFi integrations.

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

**一键部署脚本 / One-click deployment:**
```bash
./deploy.sh
```

**或手动部署 / Or manual deployment:**
```bash
npm install
npm run build
# 然后上传 dist/ 文件夹到任何静态网站托管服务
# Then upload the dist/ folder to any static hosting service
```

### 部署选项 / Deployment Options

1. **最简单 / Easiest**: [Vercel](https://vercel.com) or [Netlify](https://netlify.com) - 免费，拖拽即可
2. **GitHub Pages**: 免费静态托管
3. **Runpod**: 查看 [快速部署指南](./QUICK_DEPLOY.md)
4. **Docker**: 查看 [完整部署文档](./DEPLOYMENT.md)

**推荐阅读:**
- 💡 [傻瓜式部署指南](./QUICK_DEPLOY.md) - 5分钟搞定
- 📚 [完整部署文档](./DEPLOYMENT.md) - 所有部署方法详解

## License

MIT License - see [LICENSE](LICENSE) for details