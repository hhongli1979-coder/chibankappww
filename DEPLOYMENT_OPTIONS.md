# 🚀 部署选项总览

## 你有问题吗？看这里！

### ❓ 我该用哪个部署方式？

**简单答案：用 Vercel！**

| 方式 | 难度 | 时间 | 费用 | 推荐度 |
|------|------|------|------|--------|
| **Vercel** | ⭐ 超简单 | 3分钟 | 免费 | ⭐⭐⭐⭐⭐ |
| **Netlify** | ⭐ 超简单 | 3分钟 | 免费 | ⭐⭐⭐⭐⭐ |
| **GitHub Pages** | ⭐⭐ 简单 | 5分钟 | 免费 | ⭐⭐⭐⭐ |
| **Runpod** | ⭐⭐⭐⭐⭐ 复杂 | 15分钟 | 收费 | ⭐ |

---

## 📚 部署文档

### 1. [3MIN_DEPLOY.md](./3MIN_DEPLOY.md) ⭐ **从这里开始**
- 最快的部署方法
- Vercel 一键部署
- Netlify 拖拽上传
- GitHub Pages 快速部署

### 2. [QUICK_DEPLOY.md](./QUICK_DEPLOY.md)
- 傻瓜式部署指南
- 5分钟搞定
- 包含故障排查

### 3. [DEPLOYMENT.md](./DEPLOYMENT.md)
- 完整部署文档
- 包含 Runpod CLI 详细说明
- Docker 部署方法
- 高级配置选项

---

## 🎯 快速开始

### 方式1：Vercel（强烈推荐）

1. Fork 这个仓库
2. 去 https://vercel.com
3. 登录并 Import 这个仓库
4. 点 Deploy
5. 完成！

### 方式2：本地构建 + 上传

```bash
# 运行部署脚本
./deploy.sh         # Mac/Linux
deploy.bat          # Windows

# 然后把 dist/ 文件夹上传到任何服务
```

### 方式3：Netlify Drop

```bash
npm install && npm run build
```
然后访问 https://app.netlify.com/drop 并拖拽 `dist` 文件夹

---

## 🔧 自动化脚本

项目包含以下脚本：

- **deploy.sh** - Linux/Mac 部署脚本
- **deploy.bat** - Windows 部署脚本
- **vercel.json** - Vercel 配置
- **netlify.toml** - Netlify 配置
- **Dockerfile** - Docker 配置
- **docker-compose.yml** - Docker Compose 配置

---

## 💡 提示

1. **别用 Runpod 部署静态网站** - 它是为 GPU 计算设计的，贵且复杂
2. **Vercel 和 Netlify 是最佳选择** - 免费、简单、自动部署
3. **如果需要自己的服务器** - 用 Docker 方式
4. **测试用** - 本地运行 `npm run dev` 或 `npm run preview`

---

## 🆘 遇到问题？

1. 先看 [3MIN_DEPLOY.md](./3MIN_DEPLOY.md)
2. 再看 [QUICK_DEPLOY.md](./QUICK_DEPLOY.md)
3. 还不行就看 [DEPLOYMENT.md](./DEPLOYMENT.md)
4. 实在不行提 Issue

---

## ✅ 推荐工作流

```bash
# 开发
npm run dev

# 测试构建
npm run build
npm run preview

# 部署
./deploy.sh  # 或者直接推送到 GitHub，让 Vercel 自动部署
```

---

**记住：最简单的往往是最好的。用 Vercel，别折腾！**
