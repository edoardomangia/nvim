vim.keymap.set("n", "<leader>rw", function()
  local word = vim.fn.expand("<cword>")
  local new = vim.fn.input("Replace '" .. word .. "' with: ")
  if new == nil or new == "" then return end
  local function esc(s) return vim.fn.escape(s, [[/\]]) end
  vim.cmd(string.format("%%s/\\<%s\\>/%s/g", esc(word), esc(new)))
end, { desc = "Replace word under cursor (buffer)" })

