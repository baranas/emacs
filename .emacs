;; Cia mano emacs failas


;; ===== Pytonas

;; ** python-mode
;; Nurodyti py-shell-name

(setq py-install-directory "~/.emacs.d/library/python-mode.el-6.0.12")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)

(autoload 'python-mode "python-mode" "Python Mode." t)
 (add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
 (add-to-list 'interpreter-mode-alist '("python" . python-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(org-babel-load-languages (quote ((awk . t) (awk . t) (plantuml . t) (emacs-lisp . t) (python . t))))
 '(py-shell-local-path "c:/Luko/Python33/Scripts/ipython3")
 '(py-shell-name "c:/Luko/Python33/Scripts/ipython3.exe")
 '(python-python-command "c:/Luko/Python33/Scripts/ipython3"))

;; ===== Shortcutai

(global-set-key (kbd "C-z") 'undo)

(defun my-clear ()
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer)))


;; ===== THEMES 
;; 

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq org-plantuml-jar-path
          (expand-file-name "D:/Luko/emacs/.emacs.d/library/plantuml.jar"))

(setq load-path (cons "D:/Luko/emacs/.emacs.d/library/magit-1.2.0" load-path))
  (require 'magit)
(setq exec-path (append exec-path '("C:/Luko/Git/bin/")))
