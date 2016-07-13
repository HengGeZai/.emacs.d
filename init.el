(package-initialize)

(require 'org-install)
(require 'ob-tangle)
(org-babel-load-file (expand-file-name "init-better-defaults.org" user-emacs-directory))
(org-babel-load-file (expand-file-name "init-functions.org" user-emacs-directory))
(org-babel-load-file (expand-file-name "init-packages.org" user-emacs-directory))
(org-babel-load-file (expand-file-name "init-keybindings.org" user-emacs-directory))
