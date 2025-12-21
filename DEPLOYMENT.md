# OmniCore Wallet - 部署指南 / Deployment Guide

---

## ⚠️ 重要提示 / Important Notice

### 🎯 推荐方案：使用 Vercel（免费 + 3分钟）

**在继续使用 Runpod 之前，请先考虑 Vercel：**

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/hhongli1979-coder/AICHI3LM11.29)

**为什么选择 Vercel 而不是 Runpod？**

| 对比项 | Vercel | Runpod |
|--------|--------|--------|
| **费用** | 免费 ✅ | 按小时收费 ❌ |
| **部署时间** | 3分钟 ✅ | 15-30分钟 ❌ |
| **难度** | 点一个按钮 ✅ | 需要配置容器 ❌ |
| **HTTPS** | 自动 ✅ | 需要配置 ❌ |
| **CDN** | 全球 CDN ✅ | 无 ❌ |
| **维护** | 零维护 ✅ | 需要保持运行 ❌ |
| **适用场景** | 静态网站 ✅ | GPU计算任务 ❌ |

**💡 建议：除非你有特殊原因，否则使用 Vercel！**

详细对比请查看：[为什么不用 Runpod](./DONT_USE_RUNPOD.md) | [Vercel 部署教程](./VERCEL_DEPLOY.md)

---

## 如果你仍然要使用 Runpod...

下面是完整的 Runpod 部署指南。

## 前置要求 / Prerequisites

- Runpod 账户 / Runpod account
- Node.js >= 18
- 基本的命令行知识 / Basic command line knowledge

---

## 🚀 最简单的部署方法 - 使用 Runpod CLI

### 第一步：安装 Runpod CLI

Runpod CLI 是一个命令行工具，用于从本地计算机远程管理 Runpod 资源。
Runpod CLI is a command-line tool for remotely managing Runpod resources from your local computer.

**macOS (Homebrew):**
```bash
brew install runpod/runpodctl/runpodctl
```

**macOS (ARM - Apple Silicon):**
```bash
wget --quiet --show-progress https://github.com/runpod/runpodctl/releases/download/v1.14.3/runpodctl-darwin-arm64 -O runpodctl && chmod +x runpodctl && sudo mv runpodctl /usr/local/bin/runpodctl
```

**macOS (AMD - Intel):**
```bash
wget --quiet --show-progress https://github.com/runpod/runpodctl/releases/download/v1.14.3/runpodctl-darwin-amd64 -O runpodctl && chmod +x runpodctl && sudo mv runpodctl /usr/local/bin/runpodctl
```

**Linux:**
```bash
wget https://github.com/runpod/runpodctl/releases/latest/download/runpodctl-linux-amd64 -O runpodctl
chmod +x runpodctl
sudo mv runpodctl /usr/local/bin/runpodctl
```

**Windows:**
```powershell
# 下载最新版本 / Download latest version
# 访问 https://github.com/runpod/runpodctl/releases
# 下载 runpodctl-windows-amd64.exe
# 重命名为 runpodctl.exe 并添加到 PATH
```

**验证安装 / Verify Installation:**
```bash
runpodctl version
# 应该显示 / Should show: runpodctl v1.14.4 或更高版本
```

### 第二步：配置 API 密钥

在使用 runpodctl 之前，必须先配置 API 密钥。
Before using runpodctl, you must configure your API key.

1. **获取 API 密钥 / Get API Key:**
   - 登录 Runpod: https://www.runpod.io/
   - 进入 Settings → API Keys
   - 创建新的 API 密钥或使用现有密钥

2. **配置 API 密钥 / Configure API Key:**
```bash
runpodctl config --apiKey YOUR_API_KEY
```

成功后会显示 / Success message:
```
saved apiKey into config file: /Users/runpod/.runpod/config.toml
```

3. **验证配置 / Verify Configuration:**
```bash
runpodctl get pod
# 如果配置正确，会列出你的 Pod / If configured correctly, will list your Pods
```

### 第三步：构建并部署项目

**3.1 构建项目 / Build Project:**
```bash
# 1. 克隆项目 / Clone project
git clone https://github.com/hhongli1979-coder/AICHI3LM11.29.git
cd AICHI3LM11.29

# 2. 安装依赖 / Install dependencies
npm install

# 3. 构建生产版本 / Build for production
npm run build
```

构建完成后，所有文件在 `dist/` 目录。
After building, all files will be in the `dist/` directory.

**3.2 部署到 Runpod / Deploy to Runpod:**

有两种方法 / Two methods available:

#### 方法 A: 使用 Runpod 网页界面（最简单）

1. 登录 Runpod: https://www.runpod.io/
2. 点击 "Deploy" 创建新 Pod
3. 选择模板：
   - **推荐**: 选择 "RunPod Pytorch" 或任何带 Web Server 的模板
   - GPU 类型: 选择最便宜的 CPU Pod 即可（前端应用不需要 GPU）
4. 启动 Pod 后，使用 "Web Terminal" 或 SSH 连接到 Pod
5. 在 Pod 上安装 HTTP 服务器（Pod 已预装 Python）:
   ```bash
   # 创建目录 / Create directory
   mkdir -p /workspace/app
   cd /workspace/app
   ```
6. 从本地上传文件到 Pod:
   ```bash
   # 在本地运行 / Run locally
   runpodctl send dist/ POD_ID:/workspace/app/
   ```
7. 在 Pod 上启动 Web 服务器:
   ```bash
   # 在 Pod 的 Terminal 运行 / Run in Pod Terminal
   cd /workspace/app
   python3 -m http.server 8080 --bind 0.0.0.0
   ```
8. 在 Runpod 控制台中，找到 Pod 的公网 URL (例如: `https://xxx-8080.proxy.runpod.net`)
9. 完成！在浏览器打开 URL 访问你的网站

#### 方法 B: 使用 Runpod CLI 自动化部署

```bash
# 1. 创建 Pod / Create Pod
runpodctl create pod \
  --name omnicore-wallet \
  --imageName runpod/pytorch:latest \
  --gpuType "NVIDIA RTX A4000" \
  --containerDiskSize 10

# 记下返回的 POD_ID / Note the returned POD_ID

# 2. 等待 Pod 启动 / Wait for Pod to start (大约 1-2 分钟)
runpodctl get pod POD_ID

# 3. 上传构建文件 / Upload build files
runpodctl send dist/ POD_ID:/workspace/app/

# 4. 在 Pod 上启动 Web 服务器 / Start web server on Pod
runpodctl exec POD_ID "cd /workspace/app && nohup python3 -m http.server 8080 --bind 0.0.0.0 > server.log 2>&1 &"

# 5. 获取访问 URL / Get access URL
# 在 Runpod 控制台查看 Pod 的公网地址
# Check Pod's public URL in Runpod console
```

**常用 Runpod CLI 命令 / Common Runpod CLI Commands:**
```bash
# 查看所有 Pod / List all Pods
runpodctl get pod

# 查看特定 Pod 信息 / Get specific Pod info
runpodctl get pod POD_ID

# 执行命令 / Execute command
runpodctl exec POD_ID "your-command"

# 上传文件 / Upload files
runpodctl send local-path/ POD_ID:remote-path/

# 下载文件 / Download files
runpodctl receive POD_ID:remote-path/ local-path/

# 停止 Pod / Stop Pod
runpodctl stop pod POD_ID

# 删除 Pod / Remove Pod
runpodctl remove pod POD_ID

# 查看帮助 / View help
runpodctl help
runpodctl [command] help
```

---

## 📦 简易 HTTP 服务器部署

如果你只想快速测试，可以使用内置的 HTTP 服务器：

```bash
# 构建项目 / Build project
npm run build

# 进入构建目录 / Enter build directory
cd dist

# 启动服务器 / Start server (选择一个)
# Python 3
python3 -m http.server 8080

# Python 2
python -m SimpleHTTPServer 8080

# Node.js (需要先安装 http-server)
npx http-server -p 8080

# PHP
php -S localhost:8080
```

然后在浏览器打开: http://localhost:8080
Then open in browser: http://localhost:8080

---

## 🐳 Docker 部署（可选）

如果你熟悉 Docker，也可以使用容器部署：

```bash
# 构建镜像 / Build image
docker build -t omnicore-wallet .

# 运行容器 / Run container
docker run -p 3000:80 omnicore-wallet

# 或使用 docker-compose / Or use docker-compose
docker-compose up
```

访问: http://localhost:3000
Visit: http://localhost:3000

---

## 故障排除 / Troubleshooting

### 问题 1: 容器无法启动 / Container Won't Start

**解决方案** / **Solution**:
```bash
# 检查容器日志 / Check container logs
docker logs <container-id>

# 验证构建 / Verify build
docker build --no-cache -t omnicore-wallet:latest .
```

### 问题 2: 应用白屏 / Application Shows White Screen

**解决方案** / **Solution**:
- 检查浏览器控制台错误 / Check browser console for errors
- 验证所有资源文件是否正确加载 / Verify all asset files load correctly
- 确认 nginx 配置正确 / Confirm nginx configuration is correct

### 问题 3: 路由不工作 / Routing Not Working

**解决方案** / **Solution**:
- 确保 nginx.conf 包含 `try_files $uri $uri/ /index.html;`
- 重启容器 / Restart container

### 问题 4: 端口无法访问 / Port Not Accessible

**解决方案** / **Solution**:
- 确认 Runpod 中端口 80 已暴露
- 检查防火墙设置
- 验证容器内部应用是否在端口 80 监听
- Confirm port 80 is exposed in Runpod
- Check firewall settings
- Verify application listens on port 80 inside container

---

## 性能优化建议 / Performance Optimization

1. **启用 CDN** / **Enable CDN**
   - 考虑使用 Cloudflare 等 CDN 服务
   - Consider using CDN services like Cloudflare

2. **资源压缩** / **Asset Compression**
   - 已在 nginx.conf 中启用 gzip
   - Gzip is already enabled in nginx.conf

3. **缓存策略** / **Caching Strategy**
   - 静态资源缓存 1 年
   - HTML 文件不缓存
   - Static assets cached for 1 year
   - HTML files not cached

---

## 更新部署 / Update Deployment

### 方法 1: 使用 Docker / Using Docker

```bash
# 拉取最新代码 / Pull latest code
git pull origin main

# 重新构建镜像 / Rebuild image
docker build -t omnicore-wallet:latest .

# 推送到 registry / Push to registry
docker push <your-registry>/omnicore-wallet:latest

# 在 Runpod 中重启 Pod / Restart Pod in Runpod
```

### 方法 2: 直接更新 / Direct Update

```bash
# 构建新版本 / Build new version
npm run build

# 上传 dist/ 目录到 Runpod / Upload dist/ directory to Runpod
```

---

## 监控和日志 / Monitoring and Logs

### 查看容器日志 / View Container Logs

在 Runpod 控制台中：
In Runpod console:
1. 选择你的 Pod / Select your Pod
2. 点击 "Logs" 查看实时日志 / Click "Logs" to view real-time logs

### 健康检查 / Health Check

容器包含健康检查配置：
Container includes health check:
```bash
# 每 30 秒检查一次 / Checks every 30 seconds
# 访问 http://localhost:80/ / Accesses http://localhost:80/
```

---

## 安全建议 / Security Recommendations

1. **HTTPS**: 使用 Cloudflare 或 Let's Encrypt 启用 HTTPS
2. **环境变量**: 不要在代码中硬编码敏感信息
3. **更新依赖**: 定期运行 `npm audit` 检查漏洞
4. **访问控制**: 如需限制访问，在 Runpod 或 Nginx 层面配置

1. **HTTPS**: Enable HTTPS using Cloudflare or Let's Encrypt
2. **Environment Variables**: Don't hardcode sensitive information in code
3. **Update Dependencies**: Regularly run `npm audit` to check for vulnerabilities
4. **Access Control**: Configure access restrictions at Runpod or Nginx level if needed

---

## 支持 / Support

如遇到问题，请查看：
For issues, please check:
- [GitHub Issues](https://github.com/hhongli1979-coder/AICHI3LM11.29/issues)
- [Runpod Documentation](https://docs.runpod.io/)
- [项目 README](./README.md) / [Project README](./README.md)

---

## 快速参考命令 / Quick Reference Commands

```bash
# 本地开发 / Local development
npm run dev

# 构建生产版本 / Build for production
npm run build

# 预览构建结果 / Preview build
npm run preview

# Docker 构建 / Docker build
docker build -t omnicore-wallet .

# Docker 运行 / Docker run
docker run -p 3000:80 omnicore-wallet

# Docker Compose / Docker Compose
docker-compose up -d

# 查看日志 / View logs
docker-compose logs -f
```

---

**部署成功！** / **Deployment Successful!** 🎉

你的 OmniCore Wallet 应该现在已经在 Runpod 上运行了。
Your OmniCore Wallet should now be running on Runpod.
