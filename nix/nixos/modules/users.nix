{ pkgs, ... }: {
  users = {
    defaultUserShell = pkgs.zsh;
    users.beta = {
      isNormalUser = true;
      description = "beta";
      extraGroups = [ "networkmanager" "wheel" "input" ];
      packages = with pkgs;
        [
          kdePackages.kate
          #  thunderbird
        ];
      shell = pkgs.zsh;
    };
  };

}
