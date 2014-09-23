(require 'cask)
(cask-initialize)


;; color-theme
(when (require 'color-theme)
  (color-theme-initialize)
  (color-theme-hober))

;; color-theme.el
;;(add-to-list 'load-path "~/.emacs.d/theme/emacs-colors-solarized")
;;(require 'color-theme-solarized)

;;(when (require 'color-theme)
;;  (color-theme-initialize)
;;  ;; color-theme-solorized.el
;;  (when (require 'emacs-color-theme-solarized)
;;    (color-theme-solarized-dark)))

;;(load-theme 'solarized-dark t)
;;(load-theme 'solarized-light t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
    (cons '("\\.m$" . octave-mode) auto-mode-alist))
          (add-hook 'octave-mode-hook
                    (lambda ()
                      (abbrev-mode 1)
                      (auto-fill-mode 1)
                      (if (eq window-system 'x)
                          (font-lock-mode 1))))


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

(setq-default tab-width 4 indent-tabs-mode nil)

(global-set-key "\C-h" 'delete-backward-char)
(setq-default c-basic-offset 4     ;;基本インデント量4
              tab-width 4)          ;;タブ幅4



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
