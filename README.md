# Spacemacs config

Personal config file for [Spacemacs](http://spacemacs.org/).

## Usage

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

