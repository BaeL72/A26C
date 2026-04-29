local map = vim.keymap.set
local optsmap = { noremap = true, silent = true, nowait = true }
local telescope = require("telescope.builtin")

--DEFAULT KEYMAPS REWORK

map({ "n", "v" }, ";", ":")
map("n", "<leader>[", ":bprev<CR>")
map("n", "<leader>]", ":bnext<CR>")

--TELESCOPE KEYMAPS

map("n", "<leader>lg", telescope.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>bb", telescope.buffers, { desc = "Telescope buffers" })
map("n", "<leader>ht", telescope.help_tags, { desc = "Telescope help tags" })
map("n", "<leader>fa", telescope.current_buffer_fuzzy_find, { desc = "Telescope fuzzy find in current buffer" })
map("n", "<leader>ac", telescope.commands, { desc = "Telescope Commands" })
map("n", "<leader>gc", telescope.git_commits, { desc = "Telescope Git Commits" })
map("n", "<leader>gB", telescope.git_bcommits, { desc = "Telescope Git Bcommits" })
map("n", "<leader>gb", telescope.git_branches, { desc = "Telescope Git Branches" })
map("n", "<leader>gs", telescope.git_status, { desc = "Telescope Git Status" })
map("n", "<leader>gh", telescope.git_stash, { desc = "Telescope Git Stash" })
map("n", "<leader>ts", telescope.treesitter, { desc = "Telescope Tree Sitter" })
map("n", "<leader>ak", telescope.keymaps, { desc = "Telescope Available Keymaps" })
map("n", "<leader>ld", "<cmd>w | Telescope diagnostics<cr>", { desc = "Telescope Diagnostics List" })
map("n", "<leader>ff", telescope.find_files, { desc = "Telescope find files" })
map("n", "<leader>of", telescope.oldfiles, { desc = "Telescope Old Files" })
map("n", "<leader>gs", telescope.grep_string, { desc = "Telescope Grep String" })

--HOP NVIM

map({ "n", "v" }, "<leader><space>", "<cmd>HopWord<cr>", { desc = "Hop Word" })
map({ "n", "v" }, "<Leader>j", "<cmd>HopLine<cr>", { desc = "Hop Line" })

-- RUST KEYMAPS

map("n", "<leader>rr", "<cmd>RustLsp run<cr>", optsmap, { desc = "Rust Run" }, { ft = "rs" })
map("n", "<leader>rR", "<cmd>RustLsp runnables<cr>", optsmap, { desc = "Rust Runnables" }, { ft = "rs" })
map("n", "<leader>rh", "<cmd>RustLsp hover actions<cr>", optsmap, { desc = "Rust Hover Actions" }, { ft = "rs" })
map("n", "<leader>rH", "<cmd>RustLsp hover range<cr>", optsmap, { desc = "Rust Hover Range" }, { ft = "rs" })
map("n", "<leader>ra", "<cmd>RustLsp codeAction<cr>", optsmap, { desc = "Rust Code Action" }, { ft = "rs" })

-- DAP KEYMAPS
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "Toggle Breakpoint" })
map("n", "<leader>dB", "<cmd>DapSetLogLevel<cr>", { desc = "Set Log Level" })
map("n", "<leader>dc", "<cmd>DapContinue<cr>", { desc = "Run with Args" })
map("n", "<leader>dg", "<cmd>DapGoto<cr>", { desc = "Go to line (no execute)" })
map("n", "<leader>di", "<cmd>DapStepInto<cr>", { desc = "Step Into" })
map("n", "<leader>dj", "<cmd>DapDown<cr>", { desc = "Down" })
map("n", "<leader>dk", "<cmd>DapUp<cr>", { desc = "Up" })
map("n", "<leader>dl", "<cmd>DapShowLog<cr>", { desc = "Show Log" })
map("n", "<leader>do", "<cmd>DapStepOver<cr>", { desc = "Step Over" })
map("n", "<leader>dO", "<cmd>DapStepOut<cr>", { desc = "Step Out" })
map("n", "<leader>dp", "<cmd>DapPause<cr>", { desc = "Pause" })
map("n", "<leader>dr", "<cmd>DapRestart<cr>", { desc = "Restart" })
map("n", "<leader>ds", "<cmd>DapSessionSelect<cr>", { desc = "Session Select" })
map("n", "<leader>dt", "<cmd>DapTerminate<cr>", { desc = "Terminate" })

-- UI controls
map("n", "<leader>du", function()
	local ok, dapui = pcall(require, "dapui")
	if ok then
		dapui.toggle()
	else
		vim.notify("DAP UI not loaded", vim.log.levels.WARN)
	end
end, { desc = "Toggle Debug UI" })

-- C/C++ KEYMAPS

map("n", "<leader>mg", "<cmd>CMakeGenerate<cr>", { desc = "CMake Generate" }, { ft = { "c", "cpp", "h" } })
map("n", "<leader>mb", "<cmd>CMakeBuild<cr>", { desc = "CMake Build" }, { ft = { "c", "cpp", "h" } })
map("n", "<leader>mr", "<cmd>CMakeRun<cr>", { desc = "CMake Run" }, { ft = { "c", "cpp", "h" } })
map("n", "<leader>ml", "<cmd>CMakeClean<cr>", { desc = "CMake Clean" }, { ft = { "c", "cpp", "h" } })

-- CODE RUNNER
local ftforcr = { "c", "cpp", "py" }

map("n", "<leader>rc", "<cmd>w | RunCode<cr>", { desc = "Run Code" }, { ftforcr })

--LSP KEYMAPS
local lb = vim.lsp.buf

map({ "n", "v" }, "ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
