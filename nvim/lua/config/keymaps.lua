local map = vim.keymap.set
local telescope = require("telescope.builtin")

--DEFAULT KEYMAPS REWORK

map({ "n", "v" }, ";", ":")
map("n", "<leader>[", ":bprev<CR>")
map("n", "<leader>]", ":bnext<CR>")

--TELESCOPE KEYMAPS

map("n", "<leader>tlg", telescope.live_grep, { desc = "Telescope Live Grep" })
map("n", "<leader>tr", telescope.registers, { desc = "Telescope Registers" })
map("n", "<leader>tb", telescope.buffers, { desc = "Telescope Buffers" })
map("n", "<leader>tht", telescope.help_tags, { desc = "Telescope Help Tags" })
map("n", "<leader>tfa", telescope.current_buffer_fuzzy_find, { desc = "Telescope Fuzzy Find In Current Buffer" })
map("n", "<leader>tac", telescope.commands, { desc = "Telescope Commands" })
map("n", "<leader>tgc", telescope.git_commits, { desc = "Telescope Git Commits" })
map("n", "<leader>tgB", telescope.git_bcommits, { desc = "Telescope Git Bcommits" })
map("n", "<leader>tgb", telescope.git_branches, { desc = "Telescope Git Branches" })
map("n", "<leader>tgs", telescope.git_status, { desc = "Telescope Git Status" })
map("n", "<leader>tgh", telescope.git_stash, { desc = "Telescope Git Stash" })
map("n", "<leader>tts", telescope.treesitter, { desc = "Telescope Tree Sitter" })
map("n", "<leader>tak", telescope.keymaps, { desc = "Telescope Available Keymaps" })
map("n", "<leader>tdl", "<cmd>w | Telescope diagnostics<cr>", { desc = "Telescope Diagnostics List" })
map("n", "<leader>tff", telescope.find_files, { desc = "Telescope find files" })
map("n", "<leader>tof", telescope.oldfiles, { desc = "Telescope Old Files" })
map("n", "<leader>tgs", telescope.grep_string, { desc = "Telescope Grep String" })
map("n", "<leader>tch", telescope.command_history, { desc = "Telescope Command History" })
map("n", "<leader>tsh", telescope.search_history, { desc = "Telescope Search History" })

map("n", "<leader>n", "<cmd>Oil<cr>", { desc = "Oil File Explorer" })
-- map("n", "<leader>n", "<cmd>Neotree toggle<cr>", { desc = "NeoTree Toggle" })
-- map("n", "<leader>n", "<cmd>Telescope file_browser<cr>", { desc = "Telescope File Browser" })

--HOP NVIM

map({ "n", "x" }, "<leader><space>", "<cmd>HopWord<cr>", { desc = "Hop Word" })
map({ "n", "x" }, "<Leader>j", "<cmd>HopLine<cr>", { desc = "Hop Line" })

-- RUST KEYMAPS

map("n", "<leader>rr", "<cmd>RustLsp run<cr>", optsmap, { desc = "Rust Run" }, { ft = "rs" })
map("n", "<leader>rR", "<cmd>RustLsp runnables<cr>", optsmap, { desc = "Rust Runnables" }, { ft = "rs" })
map("n", "<leader>rh", "<cmd>RustLsp hover actions<cr>", optsmap, { desc = "Rust Hover Actions" }, { ft = "rs" })
map("n", "<leader>rH", "<cmd>RustLsp hover range<cr>", optsmap, { desc = "Rust Hover Range" }, { ft = "rs" })
map("n", "<leader>ra", "<cmd>RustLsp codeAction<cr>", optsmap, { desc = "Rust Code Action" }, { ft = "rs" })

-- DAP KEYMAPS
map(
	"n",
	"<leader>db",
	"<cmd>DapToggleBreakpoint<cr>",
	{ desc = "Toggle Breakpoint" },
	{ ft = { "c", "cpp", "h", "rs" } }
)
map("n", "<leader>dB", "<cmd>DapSetLogLevel<cr>", { desc = "Set Log Level" }, { ft = { "c", "cpp", "h", "rs" } })
map("n", "<leader>dc", "<cmd>DapContinue<cr>", { desc = "Run with Args" }, { ft = { "c", "cpp", "h", "rs" } })
map("n", "<leader>dg", "<cmd>DapGoto<cr>", { desc = "Go to line (no execute)" }, { ft = { "c", "cpp", "h", "rs" } })
map("n", "<leader>di", "<cmd>DapStepInto<cr>", { desc = "Step Into" }, { ft = { "c", "cpp", "h", "rs" } })
map("n", "<leader>dj", "<cmd>DapDown<cr>", { desc = "Down" }, { ft = { "c", "cpp", "h", "rs" } })
map("n", "<leader>dk", "<cmd>DapUp<cr>", { desc = "Up" }, { ft = { "c", "cpp", "h", "rs" } })
map("n", "<leader>dl", "<cmd>DapShowLog<cr>", { desc = "Show Log" }, { ft = { "c", "cpp", "h", "rs" } })
map("n", "<leader>do", "<cmd>DapStepOver<cr>", { desc = "Step Over" }, { ft = { "c", "cpp", "h", "rs" } })
map("n", "<leader>dO", "<cmd>DapStepOut<cr>", { desc = "Step Out" }, { ft = { "c", "cpp", "h", "rs" } })
map("n", "<leader>dp", "<cmd>DapPause<cr>", { desc = "Pause" }, { ft = { "c", "cpp", "h", "rs" } })
map("n", "<leader>dr", "<cmd>DapRestart<cr>", { desc = "Restart" }, { ft = { "c", "cpp", "h", "rs" } })
map("n", "<leader>ds", "<cmd>DapSessionSelect<cr>", { desc = "Session Select" }, { ft = { "c", "cpp", "h", "rs" } })
map("n", "<leader>dt", "<cmd>DapTerminate<cr>", { desc = "Terminate" }, { ft = { "c", "cpp", "h", "rs" } })

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

-- map("n", "<leader>mg", "<cmd>CMakeGenerate<cr>", { desc = "CMake Generate" }, { ft = { "c", "cpp", "h" } })
-- map("n", "<leader>mb", "<cmd>CMakeBuild<cr>", { desc = "CMake Build" }, { ft = { "c", "cpp", "h" } })
-- map("n", "<leader>mr", "<cmd>CMakeRun<cr>", { desc = "CMake Run" }, { ft = { "c", "cpp", "h" } })
-- map("n", "<leader>ml", "<cmd>CMakeClean<cr>", { desc = "CMake Clean" }, { ft = { "c", "cpp", "h" } })

-- CODE RUNNER
local ftforcr = { "c", "cpp", "py" }

map("n", "<leader>rc", "<cmd>w | RunCode<cr>", { desc = "Run Code" }, { ftforcr })

--LSP KEYMAPS
local lb = vim.lsp.buf

map({ "n", "x" }, "ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
