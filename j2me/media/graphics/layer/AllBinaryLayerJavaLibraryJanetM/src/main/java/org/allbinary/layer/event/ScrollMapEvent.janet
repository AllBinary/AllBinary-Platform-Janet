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
# package org.allbinary.layer.event

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)

# Java class ScrollMapEvent
(var jproto nil)
(var jnew_1 nil)
(var jm_setDx nil)
(var jm_getDx nil)
(var jm_setDy nil)
(var jm_getDy nil)
(var jm_setDxDy nil)

    
(set jnew_1 (fn jnew_1 [_anyType]
    (var this (table/setproto @{:jclass "ScrollMapEvent" :f_dx 0 :f_dy 0} jproto))
    
    
        (JR/superInit this (AllBinaryEventObject/jnew_1 _anyType))
    this))
    
(set jm_setDx (fn jm_setDx [this _dx]
        (set (this :f_dx) _dx)))
    
(set jm_getDx (fn jm_getDx [this]
    (label jreturn
        (return jreturn (this :f_dx)))))
    
(set jm_setDy (fn jm_setDy [this _dy]
        (set (this :f_dy) _dy)))
    
(set jm_getDy (fn jm_getDy [this]
    (label jreturn
        (return jreturn (this :f_dy)))))
    
(set jm_setDxDy (fn jm_setDxDy [this _dx _dy]
        (set (this :f_dx) _dx)
        (set (this :f_dy) _dy)))

(set jproto (table/setproto @{:jm_setDx jm_setDx :jm_getDx jm_getDx :jm_setDy jm_setDy :jm_getDy jm_getDy :jm_setDxDy jm_setDxDy} AllBinaryEventObject/jproto))


