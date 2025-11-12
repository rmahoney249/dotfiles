local colorscheme = "solarized-osaka"

require(colorscheme).setup({
    transparent = true, -- Enable transparency
    terminal_colors = true, -- Configure terminal colors
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
      sidebars = "transparent",
      floats = "transparent",
    },
})

-- set our colorscheme
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
