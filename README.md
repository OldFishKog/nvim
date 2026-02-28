# OFNeovimConfig
SomeConfig

需要先安装 [nvim plug](https://github.com/junegunn/vim-plug)

直接在.config拉取该仓库.

然后在nvim中执行
```
:PlugInstall
```

# 常见问题
## windows中mason安装的clangd找不到头文件
+ 在%localappdata%\clangd\config.yaml中写入
```
CompileFlags:
  Add:
    - --target=x86_64-w64-windows-gnu
```