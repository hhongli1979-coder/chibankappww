#!/bin/bash

# OmniCore Wallet 一键部署脚本
# One-click deployment script

echo "=========================================="
echo "  OmniCore Wallet 部署脚本"
echo "  Deployment Script"
echo "=========================================="
echo ""

# 检查 Node.js
if ! command -v node &> /dev/null; then
    echo "❌ 错误: 未找到 Node.js"
    echo "❌ Error: Node.js not found"
    echo "请安装 Node.js 18 或更高版本"
    echo "Please install Node.js 18 or higher"
    exit 1
fi

echo "✅ Node.js 版本: $(node --version)"
echo ""

# 安装依赖
echo "📦 安装依赖..."
echo "📦 Installing dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "❌ 依赖安装失败"
    echo "❌ Failed to install dependencies"
    exit 1
fi

echo "✅ 依赖安装成功"
echo ""

# 构建项目
echo "🔨 构建项目..."
echo "🔨 Building project..."
npm run build

if [ $? -ne 0 ]; then
    echo "❌ 构建失败"
    echo "❌ Build failed"
    exit 1
fi

echo "✅ 构建成功！"
echo "✅ Build successful!"
echo ""

# 检查 dist 目录
if [ ! -d "dist" ]; then
    echo "❌ 错误: dist 目录不存在"
    echo "❌ Error: dist directory not found"
    exit 1
fi

echo "=========================================="
echo "  🎉 部署准备完成！"
echo "  🎉 Ready to deploy!"
echo "=========================================="
echo ""
echo "📁 构建文件位置: ./dist/"
echo "📁 Build files location: ./dist/"
echo ""
echo "选择部署方式 / Choose deployment method:"
echo ""
echo "1️⃣  本地预览 (推荐先测试)"
echo "   Local preview (recommended to test first)"
echo "   cd dist && python3 -m http.server 8080"
echo ""
echo "2️⃣  上传到 Vercel/Netlify (最简单)"
echo "   Upload to Vercel/Netlify (easiest)"
echo "   - 访问 vercel.com 或 netlify.com"
echo "   - 拖拽 dist/ 文件夹"
echo ""
echo "3️⃣  部署到 Runpod"
echo "   Deploy to Runpod"
echo "   - 查看 QUICK_DEPLOY.md 获取详细步骤"
echo "   - See QUICK_DEPLOY.md for detailed steps"
echo ""

# 询问是否启动本地预览
read -p "是否启动本地预览? (y/n) / Start local preview? (y/n): " answer
if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
    echo ""
    echo "🚀 启动本地服务器..."
    echo "🚀 Starting local server..."
    echo "📍 访问地址 / URL: http://localhost:8080"
    echo "💡 按 Ctrl+C 停止服务器 / Press Ctrl+C to stop"
    echo ""
    cd dist && python3 -m http.server 8080 --bind 0.0.0.0
else
    echo ""
    echo "👍 好的！dist/ 文件夹已准备就绪"
    echo "👍 OK! The dist/ folder is ready"
    echo "现在可以上传到你选择的服务器了"
    echo "You can now upload it to your chosen server"
fi
