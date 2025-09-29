FROM nixos/nix

COPY ./default.nix default.nix
RUN nix-build && nix-shell
