(add-hook 'magit-mode-hook 'visual-line-mode)

;;; ORG MODE
;; Add hook for doing this on every org file:
;; (add-hook 'org-mode-hook 'org-html-export-on-save)
;; Enable `org-indent-mode' by default
(setq org-startup-indented t)
;; Use visual line mode to wrap text in screen space:
(add-hook 'org-mode-hook 'visual-line-mode)
(setq org-todo-keywords
      '(
        (sequence "TODO(t)" "MAYBE(m)" "IN PROGRESS(p)" "🗄 ARCHIVED(a)" "|" "✅ DONE(d)")
        (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
        )
      )

(setq auto-window-vscroll nil)

;;;; Ruby
(setq ruby-insert-encoding-magic-comment nil)
(setq enh-ruby-add-encoding-comment-on-save nil)

;; Fuzzy search in helm
(setq helm-mode-fuzzy-match t)
(setq helm-completion-in-region-fuzzy-match t)

;; Always start a server:
(require 'server)
(unless (server-running-p) (server-start))

;; Emojify (show emojis)
(setq emojify-inhibit-major-modes '(json-mode))
(add-hook 'after-init-hook 'global-emojify-mode)

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
 indent-tabs-mode nil
 tab-width 2
 c-basic-offset 2
 sh-basic-offset 2
 )
;; PHP Mode 2 spaces indent:
(add-hook 'php-mode-hook #'(lambda() (setq c-basic-offset 2)))

;; Re-builder
(setq reb-re-syntax 'string)

;; Always follow symlinks:
(setq vc-follow-symlinks t)

;; Fix for high CPU consumption
;; https://github.com/syl20bnr/spacemacs/issues/9409
(setq history-length 100)
(put 'minibuffer-history 'history-length 50)
(put 'evil-ex-history 'history-length 50)
(put 'kill-ring 'history-length 25)
(savehist-mode -1)

;; Adoc-mode for .asciidoc file extensions
(add-to-list 'auto-mode-alist '("\\.asciidoc" . adoc-mode))

;; Ruby code folding
(add-hook 'ruby-mode-hook
          (lambda () (hs-minor-mode)))

(eval-after-load "hideshow"
  '(add-to-list 'hs-special-modes-alist
                `(ruby-mode
                  ,(rx (or "def" "class" "module" "do" "{" "[")) ; Block start
                  ,(rx (or "}" "]" "end"))                       ; Block end
                  ,(rx (or "#" "=begin"))                        ; Comment start
                  ruby-forward-sexp nil)))

(global-set-key (kbd "C-c h g") 'hs-hide-block)
(global-set-key (kbd "C-c h j") 'hs-show-block)
(global-set-key (kbd "C-c h y") 'hs-hide-level)

;; Default value for auto-fill-mode
(setq-default fill-column 100)

;; Fix empty directory error
(setq projectile-git-submodule-command nil)

;; Stop creating .#file files
(setq create-lockfiles nil)

;; Stop creating ~undo-tree~ all over the place
(setq undo-tree-auto-save-history nil)
