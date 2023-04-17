(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)
(global-set-key (kbd "M-=")'count-words)

;; Move Region
(global-set-key (kbd "M-p") 'move-region-up)
(global-set-key (kbd "M-n") 'move-region-down)

;; Multiple cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Duplicate line
(global-set-key (kbd "C-c d") 'duplicate-line)

;; Kill
(global-set-key (kbd "C-c q") 'delete-frame)

;;:::::::::::::::RUBY DEBUGGERS:::::::::::::::;;
;; Add byebug
(global-set-key (kbd "C-c y") 'add-byebug)
;; Add binding.break (ruby-debug)
(global-set-key (kbd "C-c b") 'add-binding-break)

;; Code folding
(global-set-key (kbd "C-c f") 'evil-toggle-fold)

;; Indent all
(global-set-key (kbd "C-c i") 'indent-all)

;; Comment line insted of realign
(global-set-key (kbd "M-;") 'comment-line)

;; Increment number at point
(global-set-key (kbd "C-c +") 'increment-number-at-point)

;; Resize windows
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)
