(provide 'setup-editing)

;; GROUP: Editing -> Editings Basics

(setq global-mark-ring-max 5000
      mark-ring-max 5000
      mode-require-final-newline t
      )

(setq-default tab-width 4)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)

;; (setq-default indent-tabs-mode nil)


;; GROUP: Editing -> Killing
(setq
 kill-ring-max 5000
 kill-whole-line t
 )

(add-hook 'diff-mode-hook (lambda()
			    (setq-local whitespace-style
					'(face
					  tabs
					  tab-mark
					  spaces
					  space-mark
					  trailing
					  indentation::space
					  indentation::tab
					  newline
					  newline-mark
					  ))
			    (whitespace-mode 1)))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Customized Functions ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun prelude-move-beginning-of-line (arg)
  "Move point back to indentation of beginning of line"
  (interactive "^p")
  (setq arg (or arg 1))
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg))))
  (let ((orig-point (point)))
    (back-to-indentation)
    (when (= orig-point (point))
      (move-beginning-of-line 1))))

(global-set-key (kbd "C-a") 'prelude-move-beginning-of-line)

(use-package smartparens
  :ensure t
  :init
  (bind-key "C-M-f" #'sp-forward-sexp smartparens-mode-map)
  (bind-key "C-M-b" #'sp-backward-sexp smartparens-mode-map)
  (bind-key "C-)" #'sp-forward-slurp-sexp smartparens-mode-map)
  (bind-key "C-(" #'sp-backward-slurp-sexp smartparens-mode-map)
  (bind-key "M-)" #'sp-forward-barf-sexp smartparens-mode-map)
  (bind-key "M-(" #'sp-backward-barf-sexp smartparens-mode-map)
  (bind-key "C-S-s" #'sp-splice-sexp)
  (bind-key "C-M-<backspace>" #'backward-kill-sexp)
  (bind-key "C-M-S-<SPC>" (lambda () (interactive) (mark-sexp -1)))
  :config
  (smartparens-global-mode t)

  (sp-pair "'" nil :actions :rem)
  (sp-pair "^" nil :actions :rem)
  (setq sp-highlight-pair-overlay nil)
  )
