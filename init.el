(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 143 :width normal)))))



;; MELPA
;; copied code from https://www.emacswiki.org/emacs/MELPA
;; (require 'package)
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(require 'package)
(add-to-list 'package-archives '("MELPA Stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)



;; Add flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))


;; Set cursor color to white
(set-cursor-color "#ffffff")

;; javascript stuff.
;; (add-hook 'js-mode-hook 'js2-minor-mode)
;; (add-hook 'js2-mode-hook 'ac-js2-mode)
;; (setq js2-highlight-level 3)


;; Code supplied from auto-complete-for-go documentation
(defun auto-complete-for-go ()
  "Activates autocomplete for go."
  (auto-complete-mode 1))
 (add-hook 'go-mode-hook 'auto-complete-for-go)


(with-eval-after-load 'go-mode
  (require 'go-autocomplete)
  )

;; Personal code: <C-Return>
;; Makes it more fun to write go, because it
;; can be evaluated quickly
(defun go-myrun ()
  "My go-run command; does extra stuff."
  (interactive)
  (funcall 'save-buffer)
  (funcall 'gofmt)
  (funcall 'go-run)
  )

(defun my-go-config ()
  "Setup my personal go-mode configuration."
  (local-set-key (kbd "<C-return>") 'go-myrun)
  )

  (add-hook 'go-mode-hook 'my-go-config)


(electric-pair-mode)

(provide 'init)
;;; init.el ends here
