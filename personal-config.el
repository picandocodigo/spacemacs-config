;;; personal-config.el --- Fernando Briano's custom stuff for Spacemacs

;;; Commentary:
;; Stuff
;;; Add this to .spacemacs
;; (when (file-exists-p "~/.personal-config.el")
;;   (load-file "~/.personal-config.el")
;;   )

;;; Code:


;;; Set emacs mode as default
(holy-mode)

(load-theme 'monokai)

(add-hook 'magit-mode-hook 'visual-line-mode)

;;; Auto dim other buffers
;;(auto-dim-other-buffers-mode t)

;;; Open file with `xdg-open` in Linux, `open` in Mac
;;; Source:
;;; http://emacsredux.com/blog/2013/03/27/open-file-in-external-program/
(defun open-with (arg)
  "Open visited file in default external program.
  With a prefix ARG always prompt for command to use."
  (interactive "P")
  (when buffer-file-name
    (shell-command (concat
                    (cond
                     ((and (not arg) (eq system-type 'darwin)) "open")
                     ((and (not arg) (member system-type '(gnu gnu/linux gnu/kfreebsd))) "xdg-open")
                     (t (read-shell-command "Open current file with: ")))
                    " "
                    (shell-quote-argument buffer-file-name)))))
(global-set-key (kbd "C-c o") 'open-with)

;;; Org-mode
;;; Export org files to html on save:
(defun org-html-export-on-save ()
  (interactive)
  (if (memq 'org-html-export-to-html after-save-hook)
      (progn
        (remove-hook 'after-save-hook 'org-html-export-to-html t)
        (message "Disabled org html export on save for current buffer..."))
    (add-hook 'after-save-hook 'org-html-export-to-html nil t)
    (message "Enabled org html export on save for current buffer...")))

;; Add hook for doing this on every org file:
(add-hook 'org-mode-hook 'org-html-export-on-save)

;; Enable `org-indent-mode' by default
(setq org-startup-indented t)

;; Use visual line mode to wrap text in screen space:
(add-hook 'org-mode-hook 'visual-line-mode)

;;; Allow org-mode to eval source code
;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((ruby . t)
;;    )
;;  )

(provide 'personal-config)
;;; personal-config.el ends here
