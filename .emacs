(require 'cask)
(cask-initialize)

(global-set-key "\C-h" 'delete-backward-char)
(setq-default c-basic-offset 4     ;;基本インデント量4
              tab-width 4          ;;タブ幅4
              indent-tabs-mode nil)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(load-theme 'solarized-dark t)

(custom-set-faces
    '(default ((t (:background "nil")))))



;;(add-to-list 'load-path "~/.emacs.d/vendor/Highlight-Indentation-for-Emacs")
;(require 'highlight-indentation)
;(set-face-background 'highlight-indentation-face "#e3e3d3")
;(set-face-background 'highlight-indentation-current-column-face "#c3b3b3")
;(add-hook 'highlight-indentation-mode-hook 'highlight-indentation-current-column-mode)
;(add-hook 'python-mode-hook 'highlight-indentation-mode)


(add-hook 'c++-mode-hook'(lambda()(hs-minor-mode 1)))
(add-hook 'c-mode-hook'(lambda()(hs-minor-mode 1)))
(add-hook 'scheme-mode-hook'(lambda()(hs-minor-mode 1)))
(add-hook 'emacs-lisp-mode-hook'(lambda()(hs-minor-mode 1)))
(add-hook 'lisp-mode-hook'(lambda()(hs-minor-mode 1)))

(add-hook 'python-mode-hook'(lambda()(hs-minor-mode 1)))

;; (define-key global-map (kbd "\C-\\") 'hs-toggle-hiding)


;; 拡張子がorgのファイルを開いた時，自動的にorg-modeにする
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; org-modeでの強調表示を可能にする
(add-hook 'org-mode-hook 'turn-on-font-lock)
;; 見出しの余分な*を消す
(setq org-hide-leading-stars t)
;; org-default-notes-fileのディレクトリ
;(setq org-directory "~/.org/")
;; org-default-notes-fileのファイル名
;(setq org-default-notes-file "notes.org")

(setq org-todo-keywords
       '((sequence "TODO(t)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(c@)")))

(setq org-log-into-drawer t)

(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
    (cons '("\\.m$" . octave-mode) auto-mode-alist))
          (add-hook 'octave-mode-hook
                    (lambda ()
                      (abbrev-mode 1)
                      (auto-fill-mode 1)
                      (if (eq window-system 'x)
                          (font-lock-mode 1))))


;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(ansi-color-names-vector ["#262626" "#d70000" "#5f8700" "#af8700" "#0087ff" "#af005f" "#00afaf" "#626262"])
 ;;'(background-color "#1c1c1c")
;; '(background-mode dark)
;; '(cursor-color "#808080")
;; '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
;; '(foreground-color "#808080")
;;)

;;(custom-set-faces
;;'(default ((t (:background "nil"))))
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; )

;;(load-file "~/.emacs.d/theme/color-theme-solarized.el")
;;(when (require 'color-theme-solarized)
;;    (color-theme-solarized-dark))
;;
;;

