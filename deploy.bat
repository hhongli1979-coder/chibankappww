@echo off
echo ========================================
echo   OmniCore Wallet 一键部署
echo   One-Click Deployment
echo ========================================
echo.

echo 正在安装依赖...
echo Installing dependencies...
call npm install
if errorlevel 1 goto error

echo.
echo 正在构建项目...
echo Building project...
call npm run build
if errorlevel 1 goto error

echo.
echo ========================================
echo   构建完成！
echo   Build Complete!
echo ========================================
echo.
echo dist 文件夹已准备好
echo The dist folder is ready
echo.
echo 选择部署方式：
echo Choose deployment method:
echo.
echo 1. 上传到 Vercel (推荐)
echo    Upload to Vercel (Recommended)
echo    网址: https://vercel.com
echo.
echo 2. 上传到 Netlify
echo    Upload to Netlify
echo    网址: https://app.netlify.com/drop
echo.
echo 3. 本地预览
echo    Local Preview
echo    运行: cd dist ^&^& python -m http.server 8080
echo.
pause
goto end

:error
echo.
echo ========================================
echo   错误：部署失败
echo   Error: Deployment Failed
echo ========================================
pause
exit /b 1

:end
