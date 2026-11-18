# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot 
#   
# Generated Code Do Not Modify
# package org.allbinary.business.user.role

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class BasicUserRoles
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getRole nil)
(var jm_getAll nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicUserRoles" :f_roleVector nil} jproto))
    (put this :f_roleVector (BasicArrayListD/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getRole (fn jm_getRole [this _role]
    (label jreturn
        (var _roleVector (:jm_getAll this))
        (var _size (:jm_size _roleVector))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _userRole (:jm_get _roleVector _index))
            (if (= (JR/compareTo _role (:jm_toString _userRole)) 0)
                (do
                (return jreturn _userRole))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (error (JR/newException "Exception" "Unable to get role - Unknown Role")))))
    
(set jm_getAll (fn jm_getAll [this]
    (label jreturn
        (return jreturn (this :f_roleVector)))))

(set jproto @{:jm_getRole jm_getRole :jm_getAll jm_getAll})


