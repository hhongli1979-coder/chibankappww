# 3分钟部署 - 最快方法

## 🔥 方法1：Vercel（最简单，强烈推荐）

1. 打开 https://vercel.com
2. 用 GitHub 账号登录
3. 点 "Add New" → "Project"
4. 连接这个 GitHub 仓库
5. 完成！自动部署，自动获得网址

**就这么简单，不需要任何配置！**

---

## 🔥 方法2：Netlify Drop（拖拽上传）

1. 在本地运行：
   ```bash
   npm install && npm run build
   ```

2. 打开 https://app.netlify.com/drop

3. 把 `dist` 文件夹拖进去

4. 完成！立即获得网址

**时间：2分钟**

---

## 🔥 方法3：GitHub Pages（免费）

在项目根目录运行：

```bash
# 一键部署脚本
npm install
npm run build
cd dist
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:hhongli1979-coder/AICHI3LM11.29.git main:gh-pages
```

然后：
1. 去 GitHub 仓库
2. Settings → Pages
3. Source 选择 `gh-pages` 分支
4. 保存，等1分钟
5. 访问 `https://hhongli1979-coder.github.io/AICHI3LM11.29/`

---

## 如果实在要用 Runpod（不推荐）

在 Runpod Pod 的 Terminal 里直接粘贴：

```bash
cd /workspace && \
git clone https://github.com/hhongli1979-coder/AICHI3LM11.29.git && \
cd AICHI3LM11.29 && \
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
apt-get install -y nodejs && \
npm install && \
npm run build && \
cd dist && \
nohup python3 -m http.server 8080 --bind 0.0.0.0 &
```

然后在 Runpod 控制台找到 Port 8080 的链接。

---

## 为什么不推荐 Runpod？

- ❌ Runpod 是为 GPU 计算设计的，不是为静态网站
- ❌ 贵（按小时收费）
- ❌ 需要保持 Pod 运行
- ❌ 配置复杂

**改用 Vercel/Netlify:**
- ✅ 完全免费
- ✅ 自动 HTTPS
- ✅ 全球 CDN
- ✅ 自动部署
- ✅ 无需维护

---

## 我的建议

**直接用 Vercel，别折腾了：**

1. Fork 这个仓库到你的 GitHub
2. 去 vercel.com 登录
3. Import 这个仓库
4. 点击 Deploy
5. 完成！

**真的就这么简单。**
