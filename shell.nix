{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    git
    python3  # for local preview: python3 -m http.server 8080
  ];

  shellHook = ''
    echo ""
    echo "  nutshell-web dev shell"
    echo ""
    echo "  Preview site locally:"
    echo "    python3 -m http.server 8080"
    echo "    → open http://localhost:8080"
    echo ""
  '';
}
