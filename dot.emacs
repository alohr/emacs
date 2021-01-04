
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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
(setq ring-bell-function 'ignore)
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
(tool-bar-mode nil)
(show-paren-mode t)

(setenv "BASH_ENV" "$HOME/.bashrc")

;;
;; Packages
;;

(add-to-list 'package-archives
'("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages (quote (go-mode)))
 '(quote (menu-bar-mode nil))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 130 :family "Menlo")))))

(set-cursor-color "LimeGreen")
(blink-cursor-mode 0)

;;
;; CC Mode
;;

(defun my-c-mode-common-hook ()
  ;; Customizations for all of c-mode, c++-mode, and objc-mode
  (interactive)

  (c-set-style "stroustrup")
  ;;(c-set-offset 'arglist-cont-nonempty '+)
  (cond (window-system (turn-on-font-lock)
                       (setq c-font-lock-keywords c-font-lock-keywords-3)))
  (setq c-tab-always-indent nil
        c-basic-offset 4
        case-fold-search nil
        c-auto-newline nil) )

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
(add-hook 'c++-mode-common-hook 'my-c-mode-common-hook)

;;
;; CMake mode
;;

(setq load-path (cons (expand-file-name "~/.emacs.d/cmake-mode") load-path))
(require 'cmake-mode)

;;
;; LilyPond 
;;

(setq lilypond-site-lisp
      "/Applications/LilyPond.app/Contents/Resources/share/emacs/site-lisp")

(setq load-path (append (list (expand-file-name lilypond-site-lisp)) load-path))
(autoload 'LilyPond-mode "lilypond-mode" "LilyPond Editing Mode" t)
(add-to-list 'auto-mode-alist '("\\.ly$" . LilyPond-mode))
(add-to-list 'auto-mode-alist '("\\.ily$" . LilyPond-mode))
(add-hook 'LilyPond-mode-hook (lambda () (turn-on-font-lock)))
