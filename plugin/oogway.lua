vim.api.nvim_create_user_command("Oogway", function()
    local oog = require("oogway")
    vim.notify(oog.what_is_your_wisdom().."\n\n"..oog.inspire_me())
end, {})
