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
# package org.allbinary.math

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- MathUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/math/MathUtil" "jm_getInstance" args))

# Java class DistanceUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getDistance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DistanceUtil" :f_mathUtil nil} jproto))
    (put this :f_mathUtil (MathUtil/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getDistance (fn jm_getDistance [this _x1 _y1 _x2 _y2]
    (label jreturn
        (var _dx (JR/i32 (- _x1 _x2)))
        (var _dy (JR/i32 (- _y1 _y2)))
        (return jreturn (:jm_sqrt (this :f_mathUtil) (JR/i32 (+ (JR/i32 (* _dx _dx)) (JR/i32 (* _dy _dy)))))))))

(set jproto @{:jm_getDistance jm_getDistance})


