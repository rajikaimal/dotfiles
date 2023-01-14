local ok, _ = pcall(vim.cmd, 'colorscheme tokyonight')

if not ok then
    print("Colorscheme not found")
    return
end
