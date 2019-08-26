# Spacemacs config

Personal config file, private layer, notes and any other resources for [Spacemacs](http://spacemacs.org/). The personal config file was an initial approach to using custom stuff in a shared dotspacemacs, but then learned how to use private layers and went with that.

More info:
http://www.cultivatehq.com/posts/spacemacs-shared-config/

## Install:
Install Spacemacs:

```
$ git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
Create a symlink from your home directory to the dotfile:
```

Create symlink:

```
$ cd ~
$ ln -s path/to/spacemacs-config/dotfile .spacemacs
```

### Using the private layer:

Add a symlink to `personal-config-layer` in `~/.emacs.d/private`:

```
$ cd ~/.emacs.d/private/
ln -s path/to/spacemacs-config/personal-config-layer
```

Add the private layer to the `.spacemacs` file (if you're using this repo's dotfile, it's already there):

```elisp
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
        ...
        personal-layer
        )
```

### Using the config file:

Link personal-config.el in the home directory:

```bash
$ ln -s personal-config.el ~/.personal-config.el
```

And add this code to `~/.spacemacs`:
```elisp
(when (file-exists-p "~/.personal-config.el")
  (load-file "~/.personal-config.el")
  )
```

## Post install:

Run:
- `all-the-icons-install-fonts`
