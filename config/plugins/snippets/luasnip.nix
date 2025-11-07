{
  plugins.luasnip = {
    enable = true;
    friendly-snippets.enable = true;
    settings = {
      enable_autosnippets = true;
      store_selection_keys = "<Tab>";
    };
  };
  extraConfigLua = ''
    require("luasnip").filetype_extend("c", { "cdoc" })
    require("luasnip").filetype_extend("cpp", { "cppdoc" })
    require("luasnip").filetype_extend("sh", { "shelldoc" })
  '';
}
