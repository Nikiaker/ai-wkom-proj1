{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [ 
        python3
        python3Packages.ipykernel

        python3Packages.opencv-python
        python3Packages.matplotlib
        python3Packages.numpy
        python3Packages.pillow
        python3Packages.pandas
        python3Packages.ipython
        python3Packages.scikit-image
        python3Packages.plotly
        python3Packages.nbformat

        wget
        unzip
      ];
    };
  };
}
