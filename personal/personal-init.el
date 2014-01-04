;;; Initialize --- Provides local customizations

;;; Commentary:

;;; Code:
;(add-to-list 'load-path "~/elisp/config/")

(require 'org)

(org-babel-load-file "~/.emacs.d/personal/readme.org")

(let ((compiled-elisp "~/.emacs.d/readme.el"))
  (if (file-exists-p compiled-elisp)
      (delete-file compiled-elisp)))

;(require 'rss-config)
;(require 'social-config)

(provide 'personal-init)
;;; personal-init ends here
