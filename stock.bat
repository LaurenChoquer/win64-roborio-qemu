@echo off

echo Downloading Xilinx Zynq A9 Linux Kernel...
cscript //nologo download.vbs http://www.wiki.xilinx.com/file/view/2016.2-zed-release.tar.xz/586243277/2016.2-zed-release.tar.xz
echo Done.
echo Extracting Kernel...
"C:\Program Files\7-Zip\7z.exe" x 2016.2-zed-release.tar.xz
"C:\Program Files\7-Zip\7z.exe" x -o2016.2-zed-release 2016.2-zed-release.tar
echo Done.
echo Getting kernel files...
mkdir linux
move 2016.2-zed-release\zed\devicetree.dtb linux/devicetree.dtb
move 2016.2-zed-release\zed\uImage linux/uImage
rmdir /q /s 2016.2-zed-release
del 2016.2-zed-release.tar
del 2016.2-zed-release.tar.xz
echo Done.