{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
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
}