-- the following check is done to know if nvim is runnign inside vscode or not
-- useful for the vscode nvim plugin in vscode
--
local isVsCode = vim.g.vscode
if isVsCode then
  require("vs_code")
else
  require("nvim.knot")
end
--
