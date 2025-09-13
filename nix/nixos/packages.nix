{ pkgs, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
  # Development Tools
  python3         # Python programming language interpreter
  git             # Distributed version control system
  zig             # General-purpose programming language and toolchain
  zls             # Zig Language Server for IDE support
  nixfmt          # Formatter for Nix code
  cmake           # Cross-platform build system generator
  go              # Go progamming Language
  nodejs          # Javascript interpreter
  pnpm            # Javascript library manager
  sqlc      	  # sql to code 
  dbeaver-bin 	  # db manager
  openJdk	  # jdk for java dev
  
  # Version Control
  lazygit         # Simple terminal UI for git commands

  # Text Editors & IDEs
  neovim          # Hyperextensible Vim-based text editor
  vscode          # Code editor by Microsoft with extension support
  eclipse         # Java ide

  # System Utilities
  direnv          # Environment switcher for shell
  wget            # Command-line utility for downloading files
  tree            # Recursive directory listing program
  stow            # Symbolic link farm manager for dotfiles
  unrar           # Extract files from RAR archives
  gparted         # Partition editor for graphically managing disk partitions
  docker          # Platform for developing, shipping, and running applications in containers
  docker-compose  # Tool for defining and running multi-container Docker applications
  lazydocker      # Simple terminal UI for Docker
  protontricks    # Winetricks wrapper for Proton-based games

  # Terminal Utilities
  fastfetch       # System information tool (like neofetch but faster)
  kitty           # GPU-accelerated terminal emulator
  lsd             # Modern ls with colorful output and icons
  bat             # Cat clone with syntax highlighting and Git integration
  fzf             # Command-line fuzzy finder
  ripgrep         # Line-oriented search tool that recursively searches directories
  curl            # Command-line tool for transferring data with URLs
  fd              # Simple, fast and user-friendly alternative to find
  oxker           # Simple tui to view Docker container metrics
  superfile       # Terminal file manager with built-in text editor and archive handling
  posting         # Terminal request maker	

  # Multimedia
  mpv             # Free, open source media player
  cava            # Console-based audio visualizer
  ffmpeg          # Complete, cross-platform solution to record, convert and stream audio and video
  exactaudiocopy  # Audio CD ripper with high quality
  kew             # TUI (Terminal User Interface) media player

  # Gaming
  wine            # Compatibility layer for running Windows applications
  wine64          # 64-bit Wine build
  winetricks      # Helper script to install DLLs and setup prefixes

  # Web Browsers
  vivaldi         # Web browser with advanced customization features

  # Communication
  discord         # Voice, video and text communication platform

  # Note Taking
  obsidian        # Knowledge base that works on local Markdown files

  # Download Utilities
  motrix          # Download manager with clean UI and support for multiple protocols
  yt-dlp          # YouTube video downloader
  amule		  # Emule base app

  # Disk Utilities
  caligula        # TUI (Terminal User Interface) for the dd disk cloning utility
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
