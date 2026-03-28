{
  description = "A simple Nix Flake for a VS Code Python environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      dbt-with-postgres = pkgs.dbt.withAdapters (ps: [ ps.dbt-postgres ]);
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        name = "python-dev-env";

        nativeBuildInputs = [
          (pkgs.python3.withPackages (ps: with ps; [
            pip
            psycopg
            python-lsp-server
            setuptools
          ]))

          dbt-with-postgres
          pkgs.postgresql
          pkgs.openssl
          pkgs.stdenv.cc.cc.lib
          pkgs.zlib
        ];

        shellHook = ''
          export LD_LIBRARY_PATH="${pkgs.lib.makeLibraryPath [ pkgs.stdenv.cc.cc.lib pkgs.postgresql ]}:''${LD_LIBRARY_PATH}"
          
          echo "-------------------------------------------------------"
          echo "Pipeline Project Environment Active"
          echo "Python path: $(which python)"
          echo "dbt: $(dbt --version | head -n 1)"
          python -c "import psycopg; print('psycopg: found')" || echo "psycopg: MISSING"
          echo "-------------------------------------------------------"
        '';
      };
    };
}