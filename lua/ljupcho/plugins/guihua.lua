-- import guihua plugin safely
local setup, guihua = pcall(require, "guihua")
if not setup then
  return
end

-- configure/enable guihua
guihua.setup()
