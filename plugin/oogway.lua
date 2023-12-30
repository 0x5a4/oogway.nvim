vim.api.nvim_create_user_command("Oogway", function()
    require("oogway").sense_the_dragon_warrior()
end, {})
