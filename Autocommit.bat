:: ===================== 【文件夹路径】=====================
cd /d "F:\MyMath"  :: 改成你的路径，比如你的MarkdownNote.md所在文件夹
:: =====================================================================

echo.
echo ===================== Implement Git Commit =====================
echo Commit Messages: updated!
echo --------------------------------------------------------

git add .
git commit -m "updated!"
git push gitee main

echo.
echo ===================== Finished =====================
pause