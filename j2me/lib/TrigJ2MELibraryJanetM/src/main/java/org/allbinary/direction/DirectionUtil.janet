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
# package org.allbinary.direction

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(defn- DirectionFactory/jm_getInstance [& args] (JR/call jfile "./DirectionFactory" "jm_getInstance" args))

# Java class DirectionUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getAngle nil)
(var jm_getFrameAngle nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DirectionUtil" :f_directionArray nil :f_directionArray2 nil} jproto))
    (put this :f_directionArray (array/new-filled 10 nil))
    (put this :f_directionArray2 (array/new-filled 10 nil))
        (var _angleFactory (AngleFactory/jm_getInstance))
        (var _directionFactory (DirectionFactory/jm_getInstance))
        (set ((this :f_directionArray) (JR/className (_directionFactory :f_LEFT))) (_angleFactory :f_LEFT))
        (set ((this :f_directionArray) (JR/className (_directionFactory :f_RIGHT))) (_angleFactory :f_RIGHT))
        (set ((this :f_directionArray) (JR/className (_directionFactory :f_UP))) (_angleFactory :f_UP))
        (set ((this :f_directionArray) (JR/className (_directionFactory :f_DOWN))) (_angleFactory :f_DOWN))
        (set ((this :f_directionArray2) (JR/className (_directionFactory :f_LEFT))) (_angleFactory :f_LEFT))
        (set ((this :f_directionArray2) (JR/className (_directionFactory :f_RIGHT))) (_angleFactory :f_RIGHT))
        (set ((this :f_directionArray2) (JR/className (_directionFactory :f_UP))) (_angleFactory :f_UP))
        (set ((this :f_directionArray2) (JR/className (_directionFactory :f_DOWN))) (_angleFactory :f_DOWN))
    this))
    
(set jm_getAngle (fn jm_getAngle [this _direction]
    (label jreturn
        (return jreturn ((this :f_directionArray2) (:jm_getValue _direction))))))
    
(set jm_getFrameAngle (fn jm_getFrameAngle [this _direction]
    (label jreturn
        (return jreturn ((this :f_directionArray) (:jm_getValue _direction))))))

(set jproto @{:jm_getAngle jm_getAngle :jm_getFrameAngle jm_getFrameAngle})


