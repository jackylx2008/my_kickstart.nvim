# 我的 Kickstart Neovim 配置

本仓库包含了我个人的 Neovim 配置，基于官方的 [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) 配置进行修改。我做了几处改动，以提升性能、增加更多功能，并使配置更符合我的工作流。

## 安装

```bash
git clone https://github.com/jackylx2008/my_kickstart.nvim.git ~/.config/nvim
```

## 配置结构

- **`init.lua`**：配置的入口文件，处理核心配置和插件管理。
- **`after/`**：包含插件加载后的后续配置。
- **`doc/`**：文档文件，供参考。
- **`lua/`**：自定义的 Lua 函数和模块配置，供 Neovim 使用。

## 与原版 kickstart.nvim 的修改

### 修改日期：2025-10-07

- 增加了 'Python' 'C++' 'C' 'C#' 的LSP Treesiitter AutoFormatter
- 文件结构重构
- 调整了快捷键配置'after/plugin/keymaps.lua'
- 增加调整了的设置 'after/ftplugin/c.lua cpp.lua lua.lua python.lua markdown.lua'
- 增加针对不同文件类型的缩进设置 'after/lugin/defaults.lua'

## 许可证

本仓库采用 MIT 许可证
