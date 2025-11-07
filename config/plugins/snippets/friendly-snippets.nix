{
  plugins.friendly-snippets = {
    enable = true;
  };
  extraConfigLua = ''
    require("luasnip").filetype_extend("c", { "cdoc" })
    require("luasnip").filetype_extend("cpp", { "cppdoc" })
    require("luasnip").filetype_extend("sh", { "shelldoc" })
  '';

}
