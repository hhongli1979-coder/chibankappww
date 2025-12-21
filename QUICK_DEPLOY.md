# 傻瓜式部署指南 - 5分钟搞定

别废话，直接上手！

## 方法1：最简单 - 直接拖拽上传（推荐）

### 第1步：构建项目
```bash
npm install
npm run build
```

### 第2步：上传到任何静态网站托管服务

把 `dist/` 文件夹里的所有文件上传到以下任一服务：

**🔥 推荐这些，比 Runpod 简单100倍：**

1. **Vercel** (最简单，免费): https://vercel.com
   - 注册账号
   - 点击 "Add New Project"  
   - 连接 GitHub 仓库或直接拖拽 `dist/` 文件夹
   - 完成！自动获得 HTTPS 网址

2. **Netlify** (免费): https://netlify.com
   - 注册账号
   - 直接拖拽 `dist/` 文件夹到网页
   - 完成！

3. **GitHub Pages** (免费):
   ```bash
   cd dist
   git init
   git add .
   git commit -m "Deploy"
   git branch -M gh-pages
   git remote add origin YOUR_REPO_URL
   git push -u origin gh-pages
   ```
   然后在 GitHub 仓库 Settings → Pages 启用即可

4. **Cloudflare Pages** (免费): https://pages.cloudflare.com
   - 拖拽 `dist/` 文件夹
   - 完成！

---

## 方法2：如果必须用 Runpod

### 最简单的 Runpod 部署：

1. **登录 Runpod**: https://www.runpod.io/

2. **创建 Pod**:
   - 点 "Deploy"
   - 随便选个最便宜的 CPU Pod
   - 不需要 GPU！
   - 启动 Pod

3. **在 Pod 里运行**:
   ```bash
   # 在 Runpod Terminal 里粘贴这些命令
   
   # 安装 git 和 node（如果没有）
   apt-get update && apt-get install -y git curl
   curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
   apt-get install -y nodejs
   
   # 克隆项目
   cd /workspace
   git clone https://github.com/hhongli1979-coder/AICHI3LM11.29.git
   cd AICHI3LM11.29
   
   # 构建
   npm install
   npm run build
   
   # 启动服务器
   cd dist
   python3 -m http.server 8080 --bind 0.0.0.0
   ```

4. **访问网站**:
   - 在 Runpod 控制台，找到你的 Pod
   - 点击 "Connect" → "HTTP [8080]"
   - 会给你一个 URL，点开就能访问

---

## 方法3：本地预览（测试用）

```bash
npm run build
cd dist
python3 -m http.server 8080
```
打开 http://localhost:8080

---

## 故障排查

### 问题：白屏/空白页
**解决**: 检查浏览器控制台，通常是路径问题。确保所有文件都上传了。

### 问题：端口被占用
**解决**: 换个端口
```bash
python3 -m http.server 3000 --bind 0.0.0.0
```

### 问题：Runpod 太慢/太贵
**解决**: 别用 Runpod，用 Vercel/Netlify，免费又快。

---

## 一键部署脚本

创建文件 `deploy.sh`:

```bash
#!/bin/bash
echo "开始构建..."
npm install
npm run build
echo "构建完成！"
echo "dist/ 文件夹已准备好，可以上传到任何服务器"
echo "或者运行以下命令本地预览："
echo "cd dist && python3 -m http.server 8080"
```

运行：
```bash
chmod +x deploy.sh
./deploy.sh
```

---

**建议**: 
- 如果只是想部署网站，别折腾 Runpod
- 用 Vercel 或 Netlify，3分钟搞定，还免费
- Runpod 适合跑 GPU 任务，不适合部署静态网站

**实在要用 Runpod**，按方法2来，直接在 Pod 的 Terminal 里运行 Python HTTP 服务器最简单。
