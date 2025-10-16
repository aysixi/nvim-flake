{ pkgs, ... }:
{
  pkg = pkgs.vimPlugins.bufferline-nvim;
  lazy = false;
  dependencies = with pkgs.vimPlugins; [ nvim-web-devicons ];
  config = ''
    function()
      require("bufferline").setup {
        highlights = require("catppuccin.special.bufferline").get_theme()
        }
    end  '';
}
