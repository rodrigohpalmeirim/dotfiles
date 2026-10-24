# dotfiles

> [!NOTE]
> This is a snapshot of my old Linux desktop setup (Arch Linux, X11, last updated in 2022). It's kept for reference and is no longer maintained.

My configuration files and scripts for a keyboard-driven i3 desktop. It started from Luke Smith's [LARBS](https://github.com/LukeSmithxyz/voidrice) dotfiles and was customised over time, with a simple theme switcher that applies a single colour scheme to everything.

## Components

| Role | Program | Config |
| --- | --- | --- |
| Window manager | i3 (with gaps), started from `.xinitrc` | `.config/i3/` |
| Hotkeys | sxhkd | `.config/sxhkd/sxhkdrc` |
| Status bar | Polybar (`main` and `tray` bars, with custom modules for weather, Discord/Signal unread counts, news, battery, Bluetooth, etc.) | `.config/polybar/`, `.local/bin/statusbar/` |
| Compositor | compton (rounded corners) | `.config/compton.conf` |
| Notifications | dunst | `.config/dunst/` |
| Launcher | rofi (plus dmenu for small prompts) | `.config/rofi/` |
| Terminal | Alacritty | `.config/alacritty/` |
| Shell | zsh with oh-my-zsh and Powerlevel10k, fzf, zsh-syntax-highlighting | `.zshrc`, `.p10k.zsh`, `.config/aliasrc` |
| Editor | Neovim (vim-plug, Nord theme, vimwiki, goyo, NERDTree, …) | `.config/nvim/init.vim` |
| File managers | lf, ranger, vifm | `.config/lf/`, `.config/ranger/`, `.config/vifm/` |
| Media | mpd, mpv, sxiv, zathura | `.config/mpd/`, `.config/mpv/`, `.config/zathura/` |
| Other | newsboat, calcurse, neofetch, bat | `.config/…` |
| Volume OSD | [progbar](https://github.com/ttmx/progbar), shown when changing volume | `.config/sxhkd/sxhkdrc` |

Default programs are set in `.profile`: Alacritty, Neovim, Brave, zathura, ranger.

## Theming

Colours, fonts and the wallpaper are defined as X resources. `.Xresources` includes one theme file from `.config/rice/themes/` (**Nord** or **Tokyo Night**). The `thememenu` script lets you pick a theme with dmenu, and `.config/rice/applyconfigs` reloads the X resources and pushes the colours to the wallpaper, Polybar, rofi, Alacritty, Neovim and VS Code. progbar reads its colours from the same X resources. Wallpapers are in `.config/rice/wallpapers/`.

## Scripts

`.local/bin/` has the helper scripts that the hotkeys and bar call:

- `i3cmds/`: dmenu helpers (mounting drives, screen recording, display selection, unicode/emoji picker, scratchpad terminals)
- `statusbar/`: Polybar/i3blocks modules
- `tools/`: miscellaneous utilities (screenshots with `maimpick`, wallpaper setter, file extractor, link handler, `compiler`, and more)

Many of these come from LARBS.

## Usage

These files were meant to be copied (or symlinked) into `$HOME`. They have hard-coded paths and expect an Arch-based system with the programs above installed. A Portuguese keyboard layout is set in `.xprofile`, with Caps Lock acting as Super/Escape.
