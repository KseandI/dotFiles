;;; kseandi-cpp --- My collection of modules
;;; Commentary:

;;; Code:

(require 'package)
(add-to-list 'package-archives
             '("MELPA Stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(package-install 'flycheck)
(package-install 'company)

(global-flycheck-mode)

(provide 'kseandi-cpp)
;;; igor-cpp ends here
