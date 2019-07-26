(add-hook 'magit-mode-hook 'visual-line-mode)

;;; ORG MODE
;; Add hook for doing this on every org file:
(add-hook 'org-mode-hook 'org-html-export-on-save)
;; Enable `org-indent-mode' by default
(setq org-startup-indented t)
;; Use visual line mode to wrap text in screen space:
(add-hook 'org-mode-hook 'visual-line-mode)

(setq auto-window-vscroll nil)

;;;; Ruby
(setq ruby-insert-encoding-magic-comment nil)
(setq enh-ruby-add-encoding-comment-on-save nil)

;; Fuzzy search in helm
(setq helm-mode-fuzzy-match t)
(setq helm-completion-in-region-fuzzy-match t)

;; Go
(setq go-format-before-save t)
(setq gofmt-command "goimports")
(setq go-tab-width 4)
;(setq go-backend 'lsp)

;; Always start a server:
(require 'server)
(unless (server-running-p) (server-start))

;; Emojify (show emojis)
(add-hook 'after-init-hook #'global-emojify-mode)

(setq neo-theme 'icons)

;; Treemacs
(setq treemacs :variables treemacs-use-follow-mode t)
(setq treemacs :variables treemacs-use-filewatch-mode t)

;; Helm buffers
(setq helm-buffer-max-length nil)

(setq
 web-mode-attr-indent-offset 2
 web-mode-code-indent-offset 2
 web-mode-css-indent-offset 2
 web-mode-enable-auto-indentation t
 web-mode-indent-style 2
 web-mode-scss-indent-offset 2
 web-mode-markup-indent-offset 2
 css-indent-offset 2
 ruby-insert-encoding-magic-comment nil
 enh-ruby-add-encoding-comment-on-save nil
 js-indent-level 2
 js2-basic-offset 2
 js2-indent-switch-body t
 js2-mode-show-parse-errors nil
 js2-mode-show-strict-warnings nil
 editorconfig-mode 1
 )

;; Re-builder
(setq reb-re-syntax 'string)
