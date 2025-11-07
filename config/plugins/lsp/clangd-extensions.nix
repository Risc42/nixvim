{
  plugins.clangd-extensions = {
    enable = true;
    settings = {
      fallbackFlags = [
        "-std=c23"
        "-Wall"
        "-Wextra"
      ];
      args = [
        "--background-index"
        "--clang-tidy"
      ];
    };
  };
  extraConfigLua = ''
    local clangd_ext = require("clangd_extensions")
    clangd_ext.setup({
        inlay_hints = {
          auto = true,
          show_parameter_hints = true,
          parameter_hints_prefix = "<- ",
          other_hints_prefix = "=> ",
        },
        ast = {
          role_icons = {},
          kind_icons = {},
        },
        memory_usage = { border = "none" },
        symbol_info = { border = "none" },
      })
  '';
}
