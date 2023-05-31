-- In order for you to know to which category a word highlight belongs to,
-- place the cursor over that word and then type :Inspect this will show you 
-- the category. For Example, in the code below, the "SpellLocal" is a category.
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
        -- CursorLine = { bg = "#191928" },
        --LspReferenceText = spelllocalx, 
        -- LspReferenceText = { bg = "#1E1E2E" }
    }
end
