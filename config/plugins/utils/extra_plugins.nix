{ pkgs, ... }:
let
  # The Rocq/Coq LSP client plugin
  coqLspNvim = pkgs.vimPlugins.coq-lsp-nvim;
in
{
  extraPackages = with pkgs; [
    coqPackages.coq-lsp # Rocq/Coq LSP server
    coq # Core Rocq/Coq executable
  ];
  extraPlugins = with pkgs.vimPlugins; [
    #coqtail
    coqLspNvim
  ];
}
