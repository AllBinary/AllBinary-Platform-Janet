#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.graphics

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GPoint/jnew_3 [& args] (JR/call jfile "./GPoint" "jnew_3" args))

# Java class PointFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_createXY nil)
(var jm_createXYZ nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_init (fn jm_init [this]
    nil))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PointFactory" :f_ZERO_ZERO nil} jproto))
    (put this :f_ZERO_ZERO (:jm_createXYZ this 0 0 0))
    this))
    
(set jm_createXY (fn jm_createXY [this _x _y]
    (label jreturn
        (return jreturn (GPoint/jnew_3 _x _y 0)))))
    
(set jm_createXYZ (fn jm_createXYZ [this _x _y _z]
    (label jreturn
        (return jreturn (GPoint/jnew_3 _x _y _z)))))

(set jproto @{:jm_init jm_init :jm_createXY jm_createXY :jm_createXYZ jm_createXYZ})


