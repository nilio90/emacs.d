(provide 'setup-faces)


;; you won't need any of the bar thingies
;; turn it off to save screen estate
;; (if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;; (if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;; (if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(blink-cursor-mode -1)



(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(size-indication-mode t)

(setq frame-title-format
      '("" invocation-name " - " (:eval (if (buffer-file-name)
                                                    (abbreviate-file-name (buffer-file-name))
                                                  "%b"))))

;; (use-package color-theme-sanityinc-tomorrow
;;   :ensure t
;;   :init
;;   (load-theme 'sanityinc-tomorrow-bright t))
;; (use-package all-the-icons-install-fonts
;;   :ensure t)
(use-package all-the-icons
  :ensure t
;;  :config
  ;;  (all-the-icons-install-fonts))
  )

(use-package doom-themes
  :ensure t
  :config
  ;(load-theme 'doom-molokai t)
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-colors") ; use the colorful treemacs theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(use-package doom-modeline
  :ensure t
  :init
  (doom-modeline-mode t))
