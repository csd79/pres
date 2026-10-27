;;; -*- Mode: Common-Lisp; Author: denes.cselovszky@gmail.com -*- 

(in-package "CL-USER")

(load "c:\\Users\\cselovszkid\\.lispworks")

(asdf:load-system "pres")

(in-package "PRES")

(setf dfsig::*independent-exe* t)

(lw:deliver 'pres:start
    "c:\\Users\\cselovszkid\\common-lisp\\pres\\pres_v0.01.exe"
    5
    :interface :capi
    :console :io
    :multiprocessing t
    :keep-symbols '(*appdir* *independent-exe*)
    :packages-to-keep-externals '(wax ccoffice utils) ; fn-s called indirectly (symbol-function...) are invisible to the shaker
    :keep-package-manipulation t
    :keep-function-name :all
    :keep-eval t
    :keep-lisp-reader t
    :symbol-names-action nil
    :startup-bitmap-file nil
    :kill-dspec-table nil
    :keep-conditions :all
    :keep-debug-mode t
    :keep-load-function t
    :compact t
)
