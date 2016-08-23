(global-set-key [(home)]                'beginning-of-line)
(global-set-key [(end)]                 'end-of-line)
(global-set-key [(control prior)]       'beginning-of-buffer)
(global-set-key [(control next)]        'end-of-buffer)
(global-set-key [(control kp-prior)]    'beginning-of-buffer)   ;; mac
(global-set-key [(control kp-next)]     'end-of-buffer)         ;; mac

(global-set-key [(delete)]              'delete-char)
(global-set-key [(kp-delete)]           'delete-char)           ;; mac
(global-set-key [(meta tab)]            'dabbrev-expand)
(global-set-key [(meta return)]         'compile)

(global-set-key [(control down)]        'next-error)
(global-set-key [(control up)]          'previous-error)

(global-set-key [(f2)]                  'save-buffer)
(global-set-key [(shift f3)]            'ff-find-other-file)
(global-set-key [(f7)]                  'previous-error)
(global-set-key [(f8)]                  'next-error)
(global-set-key [(f11)]                 'repeat-complex-command)
(global-set-key [(f13)]                 'call-last-kbd-macro)

(global-set-key [(meta o)]              'occur)

(global-set-key [(control n)]           'other-window)
(global-set-key [(control p)]           'other-window-backward)
(global-set-key [(control z)]           'shell)

(global-set-key [S-down-mouse-3]        'imenu)

(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(setq visible-bell nil)
(setq-default indent-tabs-mode nil)

;;
;; Fix annoyances and enable some useful features
;;

(setq inhibit-startup-message t
      indent-tabs-mode nil ; no tabs in files
      mouse-yank-at-point t
      scroll-step 1
      next-line-add-newlines nil)

(fset 'yes-or-no-p 'y-or-n-p)
(put 'narrow-to-region 'disabled nil)

(transient-mark-mode t)
(auto-compression-mode t)
(iswitchb-mode t)
(tool-bar-mode nil)
(show-paren-mode t)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(quote (menu-bar-mode nil))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 130 :family "Menlo"))))
 )

(set-cursor-color "LimeGreen")
(blink-cursor-mode 0)

