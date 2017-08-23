(setq magit-repository-directories '(("~/Projects" . 1) ("~/Projects/External" . 1))
      org-default-notes-file "~/Documents/org/inbox.org"
      org-directory "~/Documents/org"
      exec-path-from-shell-arguments '("-i"))

;;====================================================
;; eclim mode settings
;;====================================================
(require 'eclim)
(setq eclimd-autostart t)

(defun my-java-mode-hook ()
  (eclim-mode t))

(add-hook 'java-mode-hook 'my-java-mode-hook)

(custom-set-variables
 '(eclim-eclipse-dirs '("~/softwares/eclipse"))
 '(eclim-executable "~/softwares/eclipse/eclim")
 '(eclimd-default-workspace "~/softwares/eclipse"))

(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
(global-company-mode t)

;;====================================================
;; company idle completion settings
;;====================================================

(setq company-minimum-prefix-length 2)
(setq company-idle-delay 0)
;;====================================================

(provide 'init-local)
