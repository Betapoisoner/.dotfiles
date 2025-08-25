{ pkgs, ... }: {
  # Bootloader.
  boot = {
    # Use latest kernel.
    kernelPackages = pkgs.linuxPackages_latest;
    loader = {
      systemd-boot.enable = false;
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot/";
      };
      grub = {
        extraEntriesBeforeNixOS = false;
        enable = true;
        useOSProber = false;
        device = "nodev";
        efiSupport = true;
        extraEntries = ''
          menuentry "Windows" {
            insmod part_gpt
            insmod fat
            insmod search_fs_uuid
            insmod chain
            search --fs-uuid --set=root F7A1-577D
            chainloader /EFI/Microsoft/Boot/bootmgfw.efi
          }
          menuentry "Reboot" {
          reboot
          }
          menuentry "Shutdown" {
          halt
          }
          menuentry 'Advanced UEFI Firmware Settings' --class efi --class uefi {
              insmod fat
              insmod chain
              chainloader @bootRoot@/EFI/Boot/Bootx64.efi
            }
        '';

      };
    };
  };
}
