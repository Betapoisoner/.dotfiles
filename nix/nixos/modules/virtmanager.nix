{ pkgs-stable, ... }: {
  virtualisation.libvirtd.enable = true;
  programs.virt-manager = {
    enable = true;
    package = pkgs-stable.virt-manager;
  };

  #virtualbox conf
  #virtualisation.virtualbox.host.enable = true;
  #virtualisation.virtualbox.guest.enable = true;
  #virtualisation.virtualbox.guest.dragAndDrop = true;
  #users.extraGroups.vboxusers.members = [ "beta" ];
  #virtualisation.virtualbox.host.enableHardening = false;
  #virtualisation.virtualbox.host.enableExtensionPack = true;
}
