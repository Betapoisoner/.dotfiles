{ pkgs, ... }: {
  nixpkgs.config = { allowUnfree = true; };

  environment.systemPackages = with pkgs; [
    neovim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    fastfetch
    kitty
    vivaldi
    gparted
    obsidian
    git
    lazygit
    vscode
    discord
    lsd
    bat
    stow
    tree
  ];

  # Fonts
  fonts.enableDefaultPackages = true;

  fonts.packages = with pkgs; [
    jetbrains-mono

    noto-fonts-emoji
    noto-fonts-cjk-sans
    noto-fonts

    nerd-fonts.fira-code
    nerd-fonts.droid-sans-mono
    nerd-fonts.jetbrains-mono
  ];
}
