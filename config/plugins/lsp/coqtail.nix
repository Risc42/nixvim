{
  /*
    extraPackages = with pkgs; [
      # The server package in Nixpkgs is coqPackages.coq-lsp
      coqPackages.coq-lsp
      # Ensure the core Rocq/Coq executable is also available
      coq
    ];
  */

  # 2. Enable the nvim-lspconfig plugin module
  plugins.lsp = {
    enable = true;
    # coq-lsp is not built into lspconfig, so we configure it manually
    # in the extraConfigs block.
  };

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

  # 5. Optional: Add Tree-sitter for better syntax highlighting
  plugins.treesitter.enable = true;
  plugins.treesitter.settings.ensureInstalled = [ "coq" ];

  # ... other configurations

}
