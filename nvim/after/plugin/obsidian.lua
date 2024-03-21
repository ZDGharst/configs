local obsidian = require("obsidian")

obsidian.setup({
  workspaces = {
    {
      name = "personal",
      path = "~/vault",
    },
  },

  daily_notes = {
    folder = "dailies",
    template = "daily.md",
  },

  templates = {
    subdir = "templates",
    substitutions = {
      yesterday = function()
        return os.date("%Y-%m-%d", os.time() - 86400)
      end,
      tomorrow = function()
        return os.date("%Y-%m-%d", os.time() + 86400)
      end,
    },
  },
})

vim.opt.conceallevel = 1

vim.keymap.set('n', '<leader>oo', vim.cmd.ObsidianQuickSwitch)
vim.keymap.set('n', '<leader>on', vim.cmd.ObsidianNew)
vim.keymap.set('n', '<leader>ot', vim.cmd.ObsidianToday)
vim.keymap.set('n', '<leader>od', vim.cmd.ObsidianDailies)
vim.keymap.set('n', '<leader>os', vim.cmd.ObsidianSearch)
vim.keymap.set('v', '<leader>oe', vim.cmd.ObsidianExtractNote)
vim.keymap.set('v', '<leader>oi', vim.cmd.ObsidianPasteImg)
