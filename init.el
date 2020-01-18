;;; Package init ;;;
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
;; add your modules path
(add-to-list 'load-path "~/.emacs.d/custom/")

(require 'setup-applications)
(require 'setup-communication)
(require 'setup-convenience)
(require 'setup-data)
(require 'setup-development)
(require 'setup-editing)
(require 'setup-environment)
(require 'setup-external)
(require 'setup-faces)
(require 'setup-files)
(require 'setup-help)
(require 'setup-programming)
(require 'setup-text)
(require 'setup-local)

(when (not package-archive-contents)
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

(global-linum-mode 1)
(column-number-mode 1)
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Trying to get fullscreen window
(defun fullscreen()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
						 '(2 "_NET_WM_STATE_FULLSCREEN" 0)))

(fullscreen)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#002451" "#ff9da4" "#d1f1a9" "#ffeead" "#bbdaff" "#ebbbff" "#99ffff" "#ffffff"))
 '(beacon-color "#ff9da4")
 '(custom-enabled-themes (quote (sanityinc-tomorrow-bright)))
 '(custom-safe-themes
   (quote
	("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" default)))
 '(fci-rule-color "#003f8e")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(package-selected-packages
   (quote
	(rainbow-mode color-theme-sanityinc-tomorrow flycheck-tip magit ibuffer-vc company-quickhelp company smartparens undo-tree yasnippet yasnippet-snippets diminish use-package)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
	((20 . "#ff9da4")
	 (40 . "#ffc58f")
	 (60 . "#ffeead")
	 (80 . "#d1f1a9")
	 (100 . "#99ffff")
	 (120 . "#bbdaff")
	 (140 . "#ebbbff")
	 (160 . "#ff9da4")
	 (180 . "#ffc58f")
	 (200 . "#ffeead")
	 (220 . "#d1f1a9")
	 (240 . "#99ffff")
	 (260 . "#bbdaff")
	 (280 . "#ebbbff")
	 (300 . "#ff9da4")
	 (320 . "#ffc58f")
	 (340 . "#ffeead")
	 (360 . "#d1f1a9"))))
 '(vc-annotate-very-old-color nil)
 '(window-divider-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
