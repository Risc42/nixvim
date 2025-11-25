{
  /*
    extraPackages = with pkgs; [
      # The server package in Nixpkgs is coqPackages.coq-lsp
      coqPackages.coq-lsp
      # Ensure the core Rocq/Coq executable is also available
      coq
    ];
  */

  # 3. Enable the dedicated client plugin for better goal display
  plugins.coq-lsp-nvim = {
    enable = true;
    # This plugin handles goal display and other Coq/Rocq-specific interactions
    # using the LSP data.
    settings = {
      # Optional: Set autostart to false if you want to use :CoqLsp or :LspStart
      # autostart = false;
    };
  };

  # 4. Optional: Disable Coqtail to prevent conflict (if you enabled it earlier)
  #plugins.Coqtail.enable = false;
  extraLuaConfig = ''
    require('coq-lsp').setup({
      keys = {
        query = "<leader>cn",   -- Next sentence (Query current sentence)
        query_back = "<leader>cp", -- Previous sentence
        open_info_panel = "<leader>ci", -- Open goals window
      },
    })
  '';
  # 5. Optional: Add Tree-sitter for better syntax highlighting
  plugins.treesitter.enable = true;
  plugins.treesitter.settings.ensureInstalled = [ "coq" ];

  # ... other configurations

}
