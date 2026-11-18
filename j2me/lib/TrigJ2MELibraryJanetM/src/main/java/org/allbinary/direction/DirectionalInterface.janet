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

# Java class DirectionalInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_setFrameByDirection nil)
(var jm_setFrameToAngle nil)
(var jm_adjustFrameToAngle nil)
(var jm_adjustFrame nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DirectionalInterface"} jproto))
    this))

    
(set jm_setFrameByDirection (fn jm_setFrameByDirection [this _direction]
    (error (JR/newException "AbstractMethodError" "setFrameByDirection"))))
    
(set jm_setFrameToAngle (fn jm_setFrameToAngle [this _angle]
    (error (JR/newException "AbstractMethodError" "setFrameToAngle"))))
    
(set jm_adjustFrameToAngle (fn jm_adjustFrameToAngle [this _newAngle]
    (error (JR/newException "AbstractMethodError" "adjustFrameToAngle"))))
    
(set jm_adjustFrame (fn jm_adjustFrame [this _angle]
    (error (JR/newException "AbstractMethodError" "adjustFrame"))))

(set jproto @{:jm_setFrameByDirection jm_setFrameByDirection :jm_setFrameToAngle jm_setFrameToAngle :jm_adjustFrameToAngle jm_adjustFrameToAngle :jm_adjustFrame jm_adjustFrame})


