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

;;; Move regions. Originally in:
;;; https://github.com/picandocodigo/emacs-config/blob/master/.emacs.d/packages/move-region.el
;;; Should find original source
(defun move-line-region-up (start end n)
  (interactive "r\np")
  (if (region-active-p) (move-region-up start end n) (move-line-up n)))

(defun move-line-region-down (start end n)
  (interactive "r\np")
  (if (region-active-p) (move-region-down start end n) (move-line-down n)))

(defun move-region (start end n)
  "Move the current region up or down by N lines."
  (interactive "r\np")
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (let ((start (point)))
      (insert line-text)
      (setq deactivate-mark nil)
      (set-mark start))))

(defun move-region-up (start end n)
  "Move the current line up by N lines."
  (interactive "r\np")
  (move-region start end (if (null n) -1 (- n))))

(defun move-region-down (start end n)
  "Move the current line down by N lines."
  (interactive "r\np")
  (move-region start end (if (null n) 1 n)))


;; Duplicate line
(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
  )

;; Require byebug
(defun add-byebug()
  (interactive)
  (beginning-of-line)
  (insert "require 'byebug'; byebug")
  (indent-according-to-mode)
  (newline-and-indent)
  )

;; Add binding.pry
(defun add-binding-pry()
  (interactive)
  (beginning-of-line)
  (insert "binding.pry")
  (indent-according-to-mode)
  (newline-and-indent)
  )

;; start ruby-asciidoc
(defun rubyascii()
  (interactive)
  (beginning-of-line)
  (insert "[source, ruby]\n----\n----")
  (indent-according-to-mode)
  (newline-and-indent)
  )

;; Indent region in entire file
(defun indent-all()
  (interactive)
  (save-excursion
    (mark-whole-buffer)
    (indent-region (region-beginning) (region-end))
    )
  )

;; Increment number at point
;; Source: https://www.emacswiki.org/emacs/IncrementNumber
(defun increment-number-at-point ()
  (interactive)
  (skip-chars-backward "0-9")
  (or (looking-at "[0-9]+")
      (error "No number at point"))
  (replace-match (number-to-string (1+ (string-to-number (match-string 0))))))
