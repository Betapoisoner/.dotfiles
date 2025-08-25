# 🐧 BetaPoisoner's Dotfiles

![NixOS](https://img.shields.io/badge/NixOS-25.05-blue?logo=nixos)
![Status](https://img.shields.io/badge/Status-Active-brightgreen)
![License](https://img.shields.io/badge/License-MIT-yellow)

A comprehensive collection of configuration files for NixOS, Git, LazyGit, and FastFetch. Built with Nix flakes for reproducible system configuration.

![System Preview](https://via.placeholder.com/800x400.png?text=System+Screenshot+Preview)

## 📁 Repository Structure

```bash
betapoisoner-.dotfiles/
├── nix/                 # NixOS system configuration (flake-based)
│   ├── flake.nix       # Main flake configuration
│   ├── flake.lock      # Dependency lock file
│   └── nixos/
│       ├── configuration.nix          # Main system configuration
│       ├── hardware-configuration.nix # Hardware-specific settings
│       ├── packages.nix               # System packages
│       └── modules/                   # Modular configuration components
├── git/                 # Git configuration files
├── lazygit/             # LazyGit configuration
├── fastfetch/           # FastFetch configuration with custom layout
├── .stowrc              # Stow configuration file
├── setup.dotfiles.sh    # Script to symlink dotfiles using GNU Stow
└── setup.nixos.flake.sh # Script to apply NixOS configuration
```

## ⚡ Quick Start

### Prerequisites
- GNU Stow (`nix-shell -p stow`)
- Git
- Nix Flakes enabled

### Installation Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/Betapoisoner/.dotfiles.git
   cd betapoisoner-.dotfiles
   ```

2. **Set up dotfiles with Stow**
   ```bash
   ./setup.dotfiles.sh
   ```

3. **Apply NixOS configuration** (if using NixOS)
   ```bash
   ./setup.nixos.flake.sh
   ```

## 🛠️ Configuration Highlights

### 🐚 Shell Environment
- Zsh with syntax highlighting and autosuggestions
- Starship prompt
- Custom aliases using `lsd` and `bat`

### 🎨 Desktop Environment
- KDE Plasma 6 with custom theme
- NVIDIA GPU support with proper configuration
- PipeWire audio system

### 🔧 Development Tools
- Neovim as default editor
- Git with extensive aliases and optimizations
- LazyGit with custom theme
- VSCode integration

### 📊 System Information
- Custom FastFetch configuration with:
  - System hardware monitoring
  - Custom logo support
  - Colorful display layout

## 🚀 NixOS Flake Configuration

The NixOS configuration is now fully functional and includes:

### ✅ Working Features
- **Flake-based system configuration**
- Latest Linux kernel
- Modular system configuration
- Hardware-specific optimizations
- Automated garbage collection
- Secure boot configuration with GRUB

### 🧩 Module System
The configuration is organized into modular components:
- `bluetooth.nix` - Bluetooth configuration
- `bootloader.nix` - GRUB bootloader with Windows support
- `gpu-config.nix` - NVIDIA GPU settings
- `sound.nix` - PipeWire audio configuration
- And 10+ other specialized modules

### 🔄 Usage
```bash
# Apply configuration
sudo nixos-rebuild switch --flake ./nix

# Update flake inputs
nix flake update

# Check configuration
nix flake check
```

## 🎯 Customization

### Adding New Configurations
1. Place new config files in appropriate directories
2. Update `.stowrc` if adding new ignore patterns
3. Run `stow .` to create symlinks

### Modifying NixOS Configuration
1. Edit files in `nix/nixos/` directory
2. Use modules for specialized configurations
3. Run setup script to apply changes

## 🐛 Troubleshooting

### Common Issues
1. **Stow conflicts**: Backup existing configs before running stow
2. **NixOS build failures**: Check flake syntax with `nix flake check`
3. **Missing dependencies**: Ensure all required packages are in `packages.nix`

### Recovery Steps
```bash
# Revert to previous generation
sudo nixos-rebuild switch --rollback

# Check system logs
journalctl -xe

# Verify hardware configuration
cat /etc/nixos/hardware-configuration.nix
```

## 🤝 Contributing

Contributions are welcome! Please feel free to:
1. Fork the repository
2. Create feature branches
3. Submit pull requests
4. Open issues for bugs or suggestions

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Note**: This configuration is tailored for my specific hardware setup. Please review and modify the hardware-specific configurations before using on your system.

---

*Maintained by [BetaPoisoner](https://github.com/Betapoisoner) • Updated October 2024* 
