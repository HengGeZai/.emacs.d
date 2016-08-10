(setq ts-init (current-time))
(package-initialize)

(require 'org-install)
(require 'ob-tangle)
;; (org-babel-load-file (expand-file-name "init-better-defaults.org" user-emacs-directory))
;; (org-babel-load-file (expand-file-name "init-functions.org" user-emacs-directory))
;; (org-babel-load-file (expand-file-name "init-packages.org" user-emacs-directory))
;; (org-babel-load-file (expand-file-name "init-keybindings.org" user-emacs-directory))

                                        ; elc does not improve the startup time-add
(load-file "~/.emacs.d/init-better-defaults.elc")
(load-file "~/.emacs.d/init-functions.elc")
(load-file "~/.emacs.d/init-packages.elc")
(load-file "~/.emacs.d/init-keybindings.elc")

;; 将customize修改的配置自动存放在customize.el中
(setq custom-file (expand-file-name "lisp/customize.el" user-emacs-directory))
(load-file custom-file)

(message "Finish startup in %.2f seconds"
         (float-time (time-since ts-init)))

;; 设置scratch默认显示的消息
(setq initial-scratch-message (concat ";; This buffer is for notes you don't want to save, and for Lisp evaluation.\n;; If you want to create a file, visit that file with C-x C-f\n;; If you want to config emacs, please type F2\n;; If you want to Agenda, please type C-c a\n;; Finish startup in " (number-to-string (float-time (time-since ts-init))) " seconds\n\n"))
