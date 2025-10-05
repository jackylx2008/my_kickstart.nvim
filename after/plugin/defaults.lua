vim.g.vimsyn_embed = 'lPr' -- Syntax embedding for Lua, Python and Ruby

-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.o.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
-- vim.o.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-options-guide`
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true


vim.o.foldlevel = 100 -- 指定代码折叠的最高层级为 100
-- textwidth = 80                      -- 经过试验发现这个参数对于英文采用空格分隔的文本有效，如果是中文没有空格分割就没有效果
vim.o.textwidth = 0 -- 默认值为0，主要解决markdown文件中输入的时候一行太多了自动换行
vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers 跟缓存有关，似乎是与其他app的缓存互通，可以打开和浏览
-- indowlocal.wrap = true
vim.o.wrap = true -- Display long lines as just one line 小哥说他不喜欢一长行的行号被分割？自动折行，原小哥设置是nowrap，写一根长句子不会自动折行，一行到底
vim.o.encoding = 'utf-8' -- The encoding displayed utf-8编码模式显示
vim.o.pumheight = 10 -- Makes popup menu smaller 弹出窗口显示几行内容
vim.o.fileencoding = 'utf-8' -- The encoding written to file
vim.o.ruler = true -- Show the cursor position all the time 显示光标所在的行号和列号
vim.o.cmdheight = 2 -- More space for displaying messags 下方命令行高度
vim.o.mouse = 'a' -- Enable your mouse 在nvim界面可以用鼠标点击移动光标到点击位置
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.splitright = true -- Vertical splits will automatically be to the right
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.o.tabstop = 4 -- Insert 4 spaces for a tab
vim.o.shiftwidth = 4 -- Change the number of space characters inserted for indentation
vim.o.smarttab = true -- Makes tabbing smarter will realize you have 2 vs 4
vim.o.expandtab = true -- Converts tabs to spaces
-- bufferlocal.expandtab = true                         -- Converts tabs to spaces
vim.o.smartindent = true -- Makes indenting smart文件类型自动检测
vim.o.autoindent = false -- Good auto indent自动换行对齐
-- bufferlocal.autoindent = true
vim.o.relativenumber = false -- 设置相对行号
vim.o.number = true -- set numbered lines
-- indowlocal.number = true                            -- Line numbers 显示行号
-- background = "dark" -- tell vim what the background color looks like
-- showtabline = 4 -- Always show tabs
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.backup = false -- This is recommended by coc
vim.o.writebackup = false -- This is recommended by coc
vim.o.updatetime = 100 -- Faster completion
vim.o.timeoutlen = 200 -- By default timeoutlen is 1000 ms
vim.o.clipboard = 'unnamedplus' -- Copy paste between vim and everything else app之间共享剪贴板
vim.o.cursorline = true -- 突出显示当前行
vim.o.laststatus = 2 -- Always display the status line
-- ivoids updating the screen before commands are completed
-- lazyredraw = true
vim.o.shortmess = 'c'
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.scrolloff = 8
vim.o.sidescrolloff = 5
vim.o.colorcolumn = '99999' -- fixes indentline for now
vim.o.guifontwide = 'Heiti SC:h18' -- the font used in graphical neovim applications like neovim-qt
-- guifont = "Hack Nerd Font Mono:h16" -- the font used in graphical neovim applications like neovim-qt
vim.o.guifont = 'JetBrainsMonoNL Nerd Font Mono:h16' -- the font used in graphical neovim applications
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()' -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.o.hlsearch = false -- highlight all matches on previous search pattern
vim.o.ignorecase = true -- ignore case in search patterns
vim.o.smartcase = true -- smart case
vim.o.swapfile = false -- creates a swapfile
vim.o.title = true -- set the title of window to the value of the titlestring
vim.o.undofile = true -- enable persistent undo
vim.o.numberwidth = 2 -- set number column width to 2 {default 4}
vim.o.signcolumn = 'yes' -- always show the sign column ,otherwise it would shift the text each time



vim.cmd 'set whichwrap+=<,>,[,],h,l'
vim.cmd [[set iskeyword+=-]]-- treat dash separated words as a word text objec 字母含有'-'认为是一个单词

vim.cmd 'filetype plugin indent on' -- 根据语言设置不同的缩进
-- setwindowlocal.signcolumn = "yes"

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]
