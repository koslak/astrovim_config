return function()
    local get_hlgroup = require("astronvim.utils").get_hlgroup
    local normal = get_hlgroup "Normal"
    local nontext = get_hlgroup "NonText"
    local fg, bg = normal.fg, normal.bg
    local bg_alt = get_hlgroup("Visual").bg
    local green = get_hlgroup("String").fg
    local red = get_hlgroup("Error").fg
    local spelllocalx = get_hlgroup "SpellLocal"
 
    return { -- this table overrides highlights in all themes
        CursorLine = { bg = "#191928" },
        --LspReferenceText = spelllocalx, 
        --LspReferenceText = { bg = "#191928" }
    }
end
