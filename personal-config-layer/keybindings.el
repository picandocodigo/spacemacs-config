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

;; Add byebug
(global-set-key (kbd "C-c y") 'add-byebug)
;; Add binding.pry
(global-set-key (kbd "C-c b") 'add-binding-pry)

;; Code folding
(global-set-key (kbd "C-c f") 'evil-toggle-fold)
