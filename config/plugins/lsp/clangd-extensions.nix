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
}
