-- 语法嵌入
vim.g.vimsyn_embed = 'lPr' -- 启用 Lua、Python、Ruby 的语法嵌入

-- =========================
-- 界面与显示
-- =========================
-- 显示行号
vim.o.number = true
-- 行号设置
vim.o.relativenumber = false
-- 行号列宽与 sign 列
vim.o.numberwidth = 2
vim.o.signcolumn = 'yes'
-- 高亮光标所在行
vim.o.cursorline = true
-- 标题栏显示窗口标题
vim.o.title = true
-- 自动换行显示长行
vim.o.wrap = true
-- 文本宽度（0 表示禁用自动换行限制）
vim.o.textwidth = 0
-- 命令行高度（用于显示信息）
vim.o.cmdheight = 2
-- 在命令行显示光标位置（行和列）
vim.o.ruler = true
-- 命令行提示信息简短显示
vim.o.shortmess = 'c'
vim.o.colorcolumn = '99999'
-- 弹出菜单高度
vim.o.pumheight = 10
-- Markdown 等文件中显示所有字符（不隐藏）
vim.o.conceallevel = 0

-- GUI 字体（用于图形 Neovim）
vim.o.guifontwide = 'Heiti SC:h18'
vim.o.guifont = 'JetBrainsMonoNL Nerd Font Mono:h16'

-- =========================
-- 鼠标、剪贴板、交互
-- =========================
-- 鼠标支持（在 Neovim 界面中可用鼠标操作）
vim.o.mouse = 'a'
-- 鼠标支持（重复保留，未删除配置）
vim.o.mouse = 'a'
-- 将剪贴板与系统同步（启动后设置以避免延长启动时间）
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)
-- 操作会失败或有未保存改动时弹出确认对话框
vim.o.confirm = true

-- =========================
-- 搜索与查找
-- =========================
-- 搜索不区分大小写，除非搜索中包含大写字母
vim.o.ignorecase = true
vim.o.smartcase = true
-- 搜索高亮控制（关闭高亮）
vim.o.hlsearch = false
-- 替换时实时预览
vim.o.inccommand = 'split'

-- =========================
-- 缩进、Tab 与空白显示
-- =========================
-- Tab 与缩进设置
vim.o.tabstop = 4        -- Tab 显示为 4 个空格
vim.o.shiftwidth = 4     -- >> << 等操作使用 4 个空格
vim.o.smarttab = true    -- 智能 Tab 行为
vim.o.expandtab = true   -- 使用空格替代 Tab
vim.o.smartindent = true -- 智能缩进（基于文件类型）
vim.o.autoindent = false -- 禁用自动继承上一行缩进（按需关闭）
-- 显示可见的空白字符
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- 允许将连字符视为单词的一部分
vim.cmd [[set iskeyword+=-]]

-- =========================
-- 缓冲区、文件与备份
-- =========================
-- 允许在有未保存修改时切换缓冲区
vim.o.hidden = true
-- 兼容性与备份
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- 持久化撤销
vim.o.undofile = true

-- 文件编码显示与写入
vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'

-- =========================
-- 窗口分割与光标移动
-- =========================
-- 新窗口分割方向
vim.o.splitright = true
vim.o.splitbelow = true
-- 分割窗口方向
vim.o.splitbelow = true
vim.o.splitright = true
-- 允许光标在行首/行尾跨行移动
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
-- 允许在行首或行尾使用方向键等跨行移动（vim.cmd 形式）
vim.cmd 'set whichwrap+=<,>,[,],h,l'

-- =========================
-- 折叠与 Treesitter
-- =========================
-- 折叠相关
vim.o.foldlevel = 100 -- 默认展开折叠层级
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()' -- 使用 treesitter 进行折叠

-- =========================
-- 性能与响应
-- =========================
-- 减少更新频率（ms）
vim.o.updatetime = 100
-- 键序列超时（ms）
vim.o.timeoutlen = 200

-- 屏幕与滚动边距设置
vim.o.scrolloff = 10
vim.o.sidescrolloff = 5

-- =========================
-- 其他设置与命令
-- =========================
-- 不在命令行显示模式（由状态栏显示）
vim.o.showmode = false

-- 启用基于文件类型的插件与缩进
vim.cmd 'filetype plugin indent on'

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`
-- 高亮复制的内容（Yank）
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]
