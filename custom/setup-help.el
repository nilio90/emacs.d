(provide 'setup-help)

(add-to-list 'load-path "~/.emacs.d/info-plus/")
(load "info+")

(use-package rainbow-mode
  :ensure t
  :init
  (add-hook 'html-mode-hook 'rainbow-mode)
  (add-hook 'css-mode-hook 'rainbow-mode))
