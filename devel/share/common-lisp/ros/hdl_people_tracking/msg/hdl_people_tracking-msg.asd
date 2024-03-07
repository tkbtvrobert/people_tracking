
(cl:in-package :asdf)

(defsystem "hdl_people_tracking-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Cluster" :depends-on ("_package_Cluster"))
    (:file "_package_Cluster" :depends-on ("_package"))
    (:file "ClusterArray" :depends-on ("_package_ClusterArray"))
    (:file "_package_ClusterArray" :depends-on ("_package"))
    (:file "Track" :depends-on ("_package_Track"))
    (:file "_package_Track" :depends-on ("_package"))
    (:file "TrackArray" :depends-on ("_package_TrackArray"))
    (:file "_package_TrackArray" :depends-on ("_package"))
  ))