;;; vertica-snippets.el --- Yasnippets for AWS

;; Copyright (C) 2018 Andreas Gerler
;; keywords: convenience,snippets
;; Version: 0.1.0
;; Package-Requires: ((yasnippet "0.6.1"))

;; Author: Andreas Gerler <baron@bundesbrandschatzamt.de>
;; Maintainer: Andreas Gerler <baron@bundesbrandschatzamt.de>

;; URL: https://github.com/baron42bba/vertica-snippets

;; Permission is hereby granted, free of charge, to any person obtaining
;; a copy of this software and associated documentation files (the
;; "Software"), to deal in the Software without restriction, including
;; without limitation the rights to use, copy, modify, merge, publish,
;; distribute, sublicense, and/or sell copies of the Software, and to
;; permit persons to whom the Software is furnished to do so, subject to
;; the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
;; LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
;; OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
;; WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

;;; Commentary:

;; A collection of yasnippet snippets to be used with the Vertica Analytics Platform

;;; Code:

(require 'yasnippet)

(defvar vertica-snippets-dir (file-name-directory (or (buffer-file-name)
                                                 load-file-name)))

;;;###autoload
(defun vertica-snippets-initialize ()
  "Add snippet dir to yas-snippet-dirs and load it."
  (let ((snip-dir (expand-file-name "snippets" vertica-snippets-dir)))
    (add-to-list 'yas-snippet-dirs snip-dir t)
    (yas-load-directory snip-dir)))

;;;###autoload
(eval-after-load 'yasnippet
   '(vertica-snippets-initialize))

(provide 'vertica-snippets)
;;; vertica-snippets.el ends here
