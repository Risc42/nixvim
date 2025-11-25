{ pkgs, ... }:
#let
# The Rocq/Coq LSP client plugin
#coqLspNvim = pkgs.vimPlugins.coq-lsp-nvim;
#in
{
  extraPackages = with pkgs; [
    coqPackages.coq-lsp # Rocq/Coq LSP server
    coq # Core Rocq/Coq executable
    coqPackages.mathcomp # Provides basic SSReflect/MathComp libraries
    coqPackages.stdpp # Some standard Coq tactics (optional)
    coqPackages.stdlib
  ];
  extraPlugins = with pkgs.vimPlugins; [
    coq-lsp-nvim

  ];
}
