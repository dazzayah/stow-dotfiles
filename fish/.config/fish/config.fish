if status is-interactive
    # Commands to run in interactive sessions can go here
end

# A tomar por culo el greeting lo cojone
set fish_greeting

# --------------------------- Binds ---------------------------------

# bind \e\e 'begin; set -l buf (commandline); commandline -r "sudo "$buf; end'

# --------------------------- Aliases -------------------------------

function ls
	command lsd $argv
end

function cat
	command bat $argv
end

function neofetch
	command fastfetch --config groups
end

function nvim
  command lvim $argv
end

# --------------------------- Path ---------------------------------

fish_add_path /home/dazzayah/.spicetify

# Created by `pipx` on 2025-03-16 02:21:33
set PATH $PATH /home/dazzayah/.local/bin
