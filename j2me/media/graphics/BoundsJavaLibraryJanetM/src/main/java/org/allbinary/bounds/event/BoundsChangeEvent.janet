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
# package org.allbinary.bounds.event

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)

# Java class BoundsChangeEvent
(var jproto nil)
(var jnew_1 nil)
(var jm_getRectangle nil)

    
(set jnew_1 (fn jnew_1 [_rectangle]
    (var this (table/setproto @{:jclass "BoundsChangeEvent"} jproto))
        (JR/superInit this (AllBinaryEventObject/jnew_1 _rectangle))
    this))
    
(set jm_getRectangle (fn jm_getRectangle [this]
    (label jreturn
        (return jreturn (:jm_getSource this)))))

(set jproto (table/setproto @{:jm_getRectangle jm_getRectangle} AllBinaryEventObject/jproto))


