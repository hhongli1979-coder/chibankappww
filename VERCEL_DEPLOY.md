# Vercel 部署指南 - 3分钟搞定！

## ✅ 确认：Vercel 可以完美部署这个项目！

这个项目已经配置好了 `vercel.json`，可以直接部署到 Vercel。

---

## 🚀 方法1：一键部署（最快，推荐）

### 步骤：

1. **点击部署按钮**

   [![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/hhongli1979-coder/AICHI3LM11.29)

2. **登录 Vercel**
   - 用 GitHub 账号登录
   - 授权 Vercel 访问你的 GitHub

3. **点击 "Deploy"**
   - 不需要修改任何配置
   - Vercel 会自动读取 `vercel.json`

4. **等待部署**
   - 大约 1-2 分钟
   - 会显示构建进度

5. **完成！**
   - 获得网址：`https://your-project.vercel.app`
   - 自动 HTTPS
   - 全球 CDN
   - 免费！

---

## 🚀 方法2：从 GitHub 导入

### 步骤：

1. **Fork 这个仓库**
   - 去 https://github.com/hhongli1979-coder/AICHI3LM11.29
   - 点击右上角 "Fork"

2. **去 Vercel**
   - 打开 https://vercel.com
   - 用 GitHub 登录

3. **创建新项目**
   - 点击 "Add New..." → "Project"
   - 选择 "Import Git Repository"

4. **选择仓库**
   - 找到你 Fork 的 `AICHI3LM11.29`
   - 点击 "Import"

5. **配置项目**
   - Framework Preset: 选择 "Vite" 或 "Other"
   - Build Command: `npm run build`（自动检测）
   - Output Directory: `dist`（自动检测）
   - Install Command: `npm install`（自动检测）

6. **点击 "Deploy"**

7. **完成！**

---

## 🚀 方法3：从命令行部署

### 步骤：

1. **安装 Vercel CLI**
   ```bash
   npm install -g vercel
   ```

2. **登录**
   ```bash
   vercel login
   ```

3. **部署**
   ```bash
   cd /path/to/AICHI3LM11.29
   vercel
   ```

4. **按提示操作**
   - 选择 scope
   - 确认项目设置
   - 等待部署完成

5. **生产部署**
   ```bash
   vercel --prod
   ```

---

## 📊 Vercel 配置说明

项目已包含 `vercel.json`：

```json
{
  "buildCommand": "npm run build",
  "outputDirectory": "dist",
  "installCommand": "npm install",
  "framework": null,
  "rewrites": [
    {
      "source": "/(.*)",
      "destination": "/index.html"
    }
  ]
}
```

**这个配置做了什么：**
- ✅ 自动运行 `npm install` 安装依赖
- ✅ 自动运行 `npm run build` 构建项目
- ✅ 使用 `dist/` 目录作为输出
- ✅ 配置 SPA 路由（所有路由指向 index.html）

---

## 🎯 部署后自动化

### 自动部署

一旦连接到 GitHub：
- Push 到 `main` 分支 → 自动部署到生产环境
- Push 到其他分支 → 自动创建预览环境
- 每个 PR → 自动创建预览 URL

### 环境变量（如果需要）

在 Vercel 控制台：
1. 选择项目
2. Settings → Environment Variables
3. 添加变量
4. 重新部署

---

## 💡 Vercel 的优势

✅ **完全免费**（个人项目）  
✅ **自动 HTTPS**（Let's Encrypt）  
✅ **全球 CDN**（超快访问）  
✅ **自动部署**（Push 即部署）  
✅ **预览环境**（每个 PR 都有预览）  
✅ **自定义域名**（免费）  
✅ **零配置**（开箱即用）  
✅ **实时日志**（查看构建和运行日志）

---

## 🔧 常见问题

### Q: 需要付费吗？
**A:** 不需要！个人项目完全免费。

### Q: 可以用自己的域名吗？
**A:** 可以！在 Vercel 项目设置中添加自定义域名。

### Q: 如何更新网站？
**A:** 直接 Push 代码到 GitHub，Vercel 会自动重新部署。

### Q: 构建失败怎么办？
**A:** 查看 Vercel 控制台的构建日志，通常会显示错误信息。

### Q: 可以回滚到之前的版本吗？
**A:** 可以！Vercel 保留所有部署历史，可以一键回滚。

---

## 📝 部署清单

- [ ] Fork 仓库或准备 GitHub 账号
- [ ] 访问 https://vercel.com
- [ ] 用 GitHub 登录
- [ ] 点击一键部署按钮或导入仓库
- [ ] 等待部署完成（1-2分钟）
- [ ] 访问生成的 URL
- [ ] 完成！🎉

---

## 🆘 需要帮助？

1. **Vercel 文档**: https://vercel.com/docs
2. **GitHub Issues**: https://github.com/hhongli1979-coder/AICHI3LM11.29/issues
3. **Vercel Discord**: https://vercel.com/discord

---

## 🎉 部署成功后

你会得到：
- 一个 `.vercel.app` 域名
- 自动 HTTPS 证书
- 全球 CDN 加速
- 自动部署 CI/CD

**示例 URL:**
- `https://omnicore-wallet.vercel.app`
- `https://omnicore-wallet-git-main-yourname.vercel.app`
- `https://your-custom-domain.com`（配置自定义域名后）

---

**现在就部署：**

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/hhongli1979-coder/AICHI3LM11.29)

**点击按钮，3分钟后见！** 🚀
