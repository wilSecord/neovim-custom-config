require("knap")
-- set shorter name for keymap function
local kmap = vim.keymap.set

-- F5 processes the document once, and refreshes the view
kmap({ 'n', 'v', 'i' },'C-p', function() require("knap").process_once() end)

-- F6 closes the viewer application, and allows settings to be reset
kmap({ 'n', 'v', 'i' },'<F6>', function() require("knap").close_viewer() end)

-- F7 toggles the auto-processing on and off
kmap({ 'n', 'v', 'i' },'C-l', function() require("knap").toggle_autopreviewing() end)

-- F8 invokes a SyncTeX forward search, or similar, where appropriate
kmap({ 'n', 'v', 'i' },'<F8>', function() require("knap").forward_jump() end)

local gknap_settings = {
    textopdfviewerlaunch: "zathura --synctex-editor-command 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%{input}'\"'\"',%{line},0)\"' %outputfile%",
    textopdfviewerrefresh: "none",
    textopdfforwardjump: "zathura --synctex-forward=%line%:%column%:%srcfile% %outputfile%"
\ }
local gknapsettings = {
    texoutputext = "pdf",
    textopdf = "pdflatex -synctex=1 -halt-on-error -interaction=batchmode %docroot%",
    textopdfviewerlaunch = "zathura %outputfile%",
    textopdfviewerrefresh = "kill -HUP %pid%"
}
vim.g.knap_settings = gknapsettings
