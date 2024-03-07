
(cl:in-package :asdf)

(defsystem "my_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Human" :depends-on ("_package_Human"))
    (:file "_package_Human" :depends-on ("_package"))
    (:file "HumanArray" :depends-on ("_package_HumanArray"))
    (:file "_package_HumanArray" :depends-on ("_package"))
    (:file "HumanGazebo" :depends-on ("_package_HumanGazebo"))
    (:file "_package_HumanGazebo" :depends-on ("_package"))
    (:file "group" :depends-on ("_package_group"))
    (:file "_package_group" :depends-on ("_package"))
    (:file "groupChart" :depends-on ("_package_groupChart"))
    (:file "_package_groupChart" :depends-on ("_package"))
    (:file "kdanger" :depends-on ("_package_kdanger"))
    (:file "_package_kdanger" :depends-on ("_package"))
    (:file "kdangerArray" :depends-on ("_package_kdangerArray"))
    (:file "_package_kdangerArray" :depends-on ("_package"))
  ))