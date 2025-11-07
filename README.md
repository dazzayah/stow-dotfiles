# Dotfiles for i3 (with GNU Stow)

My minimal and modular dotfiles for the i3 window manager, ready to be managed with GNU Stow.


## Quick Setup

Clone this repository into your home directory (or wherever you prefer):

```bash
git clone https://github.com/dazzayah/i3-dotfiles.git ~/dotfiles
cd ~/dotfiles
```
Simply run stow {dotfile_directory} from the root of the repository to create symlinks from your system configuration to this repository.
Make sure to keep this repository in place for the links to work, or use the provided `install.sh` script to copy the files directly instead.
