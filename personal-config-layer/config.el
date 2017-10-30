;;; Set emacs mode as default
(setq dotspacemacs-editing-style 'emacs)

;;; ORG MODE
(add-hook 'magit-mode-hook 'visual-line-mode)
;; Add hook for doing this on every org file:
(add-hook 'org-mode-hook 'org-html-export-on-save)
;; Enable `org-indent-mode' by default
(setq org-startup-indented t)

;; Use visual line mode to wrap text in screen space:
(add-hook 'org-mode-hook 'visual-line-mode)

;;; THEME
(spacemacs/load-theme 'gruvbox)
(load-theme 'gruvbox-dark-medium)
