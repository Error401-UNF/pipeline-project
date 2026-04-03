{
  description = "A simple Nix Flake for a VS Code Python environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

      pythonEnv = pkgs.python3.withPackages (ps: with ps; [
        pip
        setuptools
        psycopg
      ]);
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        name = "pipeline-env";

        buildInputs = [
          pythonEnv
          pkgs.postgresql
          pkgs.openssl
          pkgs.zlib
          pkgs.stdenv.cc.cc.lib
          # dbt remains separate as it has its own adapter logic
          (pkgs.dbt.withAdapters (ps: [ ps.dbt-postgres ]))
        ];

        shellHook = ''
          export LD_LIBRARY_PATH="${pkgs.lib.makeLibraryPath [ pkgs.stdenv.cc.cc.lib pkgs.postgresql ]}:''${LD_LIBRARY_PATH}"
          
          # Force Airflow to live in your project folder
          export AIRFLOW_HOME="$PWD/.airflow"
          mkdir -p "$AIRFLOW_HOME"

          echo "-------------------------------------------------------"
          echo "Nix-Native Airflow Environment Active"
          echo "Airflow Version: $(airflow version 2>/dev/null || echo 'Not Init Yet')"
          echo "AIRFLOW_HOME: $AIRFLOW_HOME"
          echo "-------------------------------------------------------"
        '';
        };
    };
}