# oogway.nvim

_There are no accidents._

<div id="header" align="left">
  <img src="https://media.giphy.com/media/5Ivz8uxHriaAw/giphy.gif" width="500"/>
</div>

## Features

- Dispense **30** wisdoms that will surely help you find motivation again
- Slack of at work by looking at **4** astonishing images of Master Oogway!
- Send your friends to the Spirit realm by being as Zen as the Master himself

## Installation

- [lazy.nvim](https://github.com/folke/lazy.nvim)

  ```lua
    {
      "0x5a4/oogway.nvim",
      cmd = { "Oogway"} -- for lazy loading
    },
  ```

- [packer.nvim](https://github.com/wbthomason/packer.nvim)

  ```lua
  use "0x5a4/oogway.nvim"
  ```

- [vim-plug](https://github.com/junegunn/vim-plug)

  ```vim
  Plug '0x5a4/oogway.nvim'
  ```

## Usage

- Using the very handy `Oogway` command
- Using the lua API

  ```lua
  local oogway = require("oogway")
  -- Do what the command does (print wisdom and image)
  oogway.sense_the_dragon_warrior()

  -- Returns a random Oogway quote
  oogway.what_is_your_wisdom()

  -- Returns a random Oogway image
  oogway.inspire_me()

  -- Returns all possible wisdoms
  oogway.wisdoms()

  -- Returns all possible images
  oogway.oogways()
  ```

### Using with `folke/zen-mode.nvim`

Dispense a wisdom every time you enter zen mode!

```lua
require("zen-mode").setup({
    on_open = function()
        require("oogway").sense_the_dragon_warrior()
    end
})

```

### Using with `goolord/alpha-nvim`

```lua
local dashboard_theme = require("alpha.themes.dashboard")
local oogway = require("oogway")
dashboard_theme.footer.val = oogway.what_is_your_wisdom()
dashboard_theme.header.val = oogway.inspire_me();

require("alpha").setup(dashboard_theme.opts)
```

### Using with `nvimdev/dashboard-nvim`

```lua
local oogway = require("oogway")
require("dashboard").setup({
    config = {
        header = vim.fn.split(oogway.inspire_me(), "\n"),
        footer = { oogway.what_is_your_wisdom() },
    }
})
```
