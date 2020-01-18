(provide 'setup-help)

(use-package helm
  :ensure t
  :config
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  (global-set-key (kbd "C-x b") 'helm-buffers-list)
  (global-set-key (kbd "C-x r b") 'helm-bookmarks)
  (global-set-key (kbd "C-x m") 'helm-M-x)
  (global-set-key (kbd "M-y") 'helm-show-kill-ring)
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  (setq helm-buffers-fuzzy-matching t)
  (unless (boundp 'completion-in-region-function)
	(define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
	(define-key emacs-lisp-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)))
  

(use-package helm-swoop
  :ensure t)
