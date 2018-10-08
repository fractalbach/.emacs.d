
;; MELPA Stable and use-package.
(require 'package)
(add-to-list 'package-archives
	     '("MELPA Stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)



;; Packages
;; --------------------------------------------------

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package auto-complete
  :ensure t)

(use-package go-autocomplete
  :ensure t)

(use-package go-mode
  :ensure t)



;; Configure auto-completion
;; --------------------------------------------------

(defun auto-complete-for-go ()
  "Activates go auto-complete mode."
  (auto-complete-mode 1))
(add-hook 'go-mode-hook 'auto-complete-for-go)






;; Functions that I wrote
;; --------------------------------------------------

(defun go-myrun ()
  "My go-run command; does extra stuff."
  (interactive)
  (funcall 'save-buffer)
  (funcall 'gofmt)
  (funcall 'go-run))

(defun my-go-config ()
  "Setup my personal go-mode configuration."
  (local-set-key (kbd "<C-return>") 'go-myrun))
(add-hook 'go-mode-hook 'my-go-config)



;; Javascript stuff
;; --------------------------------------------------
;; (add-hook 'js-mode-hook 'js2-minor-mode)
;; (add-hook 'js2-mode-hook 'ac-js2-mode)
;; (setq js2-highlight-level 3)




;; Various other customizations
;; --------------------------------------------------
;; (set-cursor-color "#ffffff")
(electric-pair-mode)






;; ============================================================

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (flycheck use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
