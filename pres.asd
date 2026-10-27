(defsystem "pres"
  :description "Attendance register"
  :author      "Denes Cselovszki <denes.cselovszki@gmail.com>"
  :version     "0.01"
  :depends-on  ("utils" "ccom4" "ccoffice" "wax")
  :serial      t
  :components  ((:file "package")
                (:file "fli-templates")
                (:file "pres")))
