{ pkgs, ... }:
#let
# The Rocq/Coq LSP client plugin
#coqLspNvim = pkgs.vimPlugins.coq-lsp-nvim;
#in
{
  extraPackages = with pkgs; [
    coqPackages.coq-lsp # Rocq/Coq LSP server
    coq # Core Rocq/Coq executable
  ];
  extraPlugins = with pkgs.vimPlugins; [
    #coq-lsp-nvim
    (pkgs.vimPlugins.coq-lsp-nvim.overrideAttrs (_: {
      src = pkgs.fetchFromGitHub {
        owner = "tomtomjhj";
        repo = "coq-lsp.nvim";
        rev = "master"; # or a pinned commit
        sha256 = "sha256-1a45345nqr0hygagsqrqh0v1a1254qv10fh8rp3rkgqsqvj9sdcy=";
      };
    }))
  ];
}
