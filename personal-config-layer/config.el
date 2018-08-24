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
(spacemacs/load-theme 'wombat)
(setq auto-window-vscroll nil)

(setq ruby-insert-encoding-magic-comment nil)
(setq enh-ruby-add-encoding-comment-on-save nil)

;; Fuzzy search in helm
(setq helm-mode-fuzzy-match t)
(setq helm-completion-in-region-fuzzy-match t)

;; Go
(setq go-format-before-save t)
(setq gofmt-command "goimports")
(setq go-tab-width 4)

;; Always start a server:
(require 'server)
(unless (server-running-p) (server-start))
