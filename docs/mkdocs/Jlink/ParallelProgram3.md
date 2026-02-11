# JLink并行烧录

!!! Note
    在一台上位机使用多个Jlink同时烧录多个板子。


1. 不同Jlink都有不同的SN，可在Jlink commander中输入usb查看。

2. 准备好正常烧录的工程文件，保存为.jflash。

3. 修改`ParallelProgramming.bat`中的Serial no、J-Flash project file以及Data file，保存。

4. 上述脚本会使用到`StartJFlash.bat`调用JFlash进行烧录。可以使用`-hide`或者`-min`隐藏窗口。

如果烧录失败，命令行窗口会有对应的SN号提示失败。

:octicons-download-16: [ParallelProgramming.bat](ParallelProgramming.bat)

:octicons-download-16: [StartJFlash.bat](StartJFlash.bat)

:octicons-download-16: [Jlink官方文档](UM08003_JFlash.pdf)