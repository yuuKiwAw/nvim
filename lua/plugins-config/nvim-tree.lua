local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("没有找到 nvim-tree")
    return
end

nvim_tree.setup({
    -- 关闭文件时自动关闭
    -- auto_close = true
})

