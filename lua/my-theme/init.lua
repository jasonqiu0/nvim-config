local M = {}

local colors = {
	bg = "#4a5759",
	fg = "#cdd6f4",
	red = "#f38ba8",
	green = "#a6e3a1",
	yellow = "f9e2af",
	blue = "#89b4fa",
	magenta = "f5c2e7",
	cyan = "94e2d5",
	gray = "6c77806",
}

function M.colorscheme()
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")

	vim.o.background = "dark"
	vim.g.colors_name = "my-theme"

	local set = vim.api.nvim_set_hl

	set(0, "Normal", { bg = colors.bg, fg = colors.fg })
	--set(0, "Comment", { fg = colors.gray, italic = true })
	--functionset(0, "Constant", { })
	--set(0, "Function", { })
	--set(0, "Comment", { })
end
return M
