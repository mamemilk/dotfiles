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


;(add-to-list 'load-path "~/.emacs.d/vendor/Highlight-Indentation-for-Emacs")
;(require 'highlight-indentation)
;(set-face-background 'highlight-indentation-face "#e3e3d3")
;(set-face-background 'highlight-indentation-current-column-face "#c3b3b3")
;(add-hook 'highlight-indentation-mode-hook 'highlight-indentation-current-column-mode)
;(add-hook 'python-mode-hook 'highlight-indentation-mode)


;(load-file "~/.emacs.d/vendor/cedet-1.1/common/cedet.el")
;(global-ede-mode 1)                      ; Enable the Project management system
;(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion
;(global-srecode-minor-mode 1)


;(load-file "~/.emacs.d/vendor/emacs-for-python/epy-init.el")
;(setq epy-enable-ropemacs nil)
;(require 'highlight-indentation)
;(add-hook 'python-mode-hook 'highlight-indentation)


(add-hook 'c-mode-hook
          '(lambda ()
             (define-key c-mode-map "\C-c\C-c" 'compile)))


(global-set-key "\C-h" 'delete-backward-char)
(prefer-coding-system 'utf-8)
(define-coding-system-alias 'UTF-8 'utf-8)





(defun toggle-selective-display (column)
  (interactive "P")
  (set-selective-display
   (or column
       (unless selective-display
         (1+ (current-column))))))

(defun toggle-hiding (column)
  (interactive "P")
  (if hs-minor-mode
      (if (condition-case nil
              (hs-toggle-hiding)
            (error t))
          (hs-show-all))
    (toggle-selective-display column)))



(load-library "hideshow")
(global-set-key (kbd "C-+") 'toggle-hiding)
(global-set-key (kbd "C-\\") 'toggle-selective-display)


(add-hook 'c++-mode-hook'(lambda()(hs-minor-mode 1)))
(add-hook 'c-mode-hook'(lambda()(hs-minor-mode 1)))
(add-hook 'scheme-mode-hook'(lambda()(hs-minor-mode 1)))
(add-hook 'emacs-lisp-mode-hook'(lambda()(hs-minor-mode 1)))
(add-hook 'lisp-mode-hook'(lambda()(hs-minor-mode 1)))

(add-hook 'python-mode-hook'(lambda()(hs-minor-mode 1)))

;; (define-key global-map (kbd "\C-\\") 'hs-toggle-hiding)

(setq-default tab-width 4 indent-tabs-mode nil)

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



(add-to-list 'load-path "~/.emacs.d/vendor")
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . js2-mode))


(add-to-list 'load-path "~/.emacs.d/vendor/web-beautify")

(require 'web-beautify) ;; Not necessary if using ELPA package
(eval-after-load 'js2-mode
  '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))
;; Or if you're using 'js-mode' (a.k.a 'javascript-mode')
(eval-after-load 'js
  '(define-key js-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'json-mode
  '(define-key json-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'sgml-mode
  '(define-key html-mode-map (kbd "C-c b") 'web-beautify-html))

(eval-after-load 'css-mode
  '(define-key css-mode-map (kbd "C-c b") 'web-beautify-css))

(eval-after-load 'js2-mode
  '(add-hook 'js2-mode-hook
             (lambda ()
               (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

;; Or if you're using 'js-mode' (a.k.a 'javascript-mode')
(eval-after-load 'js
  '(add-hook 'js-mode-hook
             (lambda ()
               (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

(eval-after-load 'json-mode
  '(add-hook 'json-mode-hook
             (lambda ()
               (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

(eval-after-load 'sgml-mode
  '(add-hook 'html-mode-hook
             (lambda ()
               (add-hook 'before-save-hook 'web-beautify-html-buffer t t))))

(eval-after-load 'css-mode
  '(add-hook 'css-mode-hook
             (lambda ()
               (add-hook 'before-save-hook 'web-beautify-css-buffer t t))))
