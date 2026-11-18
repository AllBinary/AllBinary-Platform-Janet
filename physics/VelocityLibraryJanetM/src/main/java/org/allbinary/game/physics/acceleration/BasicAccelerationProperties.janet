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
# package org.allbinary.game.physics.acceleration

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class BasicAccelerationProperties
(var jproto nil)
(var jnew_2 nil)
(var jm_setReverse nil)
(var jm_getReverse nil)
(var jm_setForward nil)
(var jm_getForward nil)

    
(set jnew_2 (fn jnew_2 [_forward _reverse]
    (var this (table/setproto @{:jclass "BasicAccelerationProperties" :f_forward 0 :f_reverse 0} jproto))
    
    
        (:jm_setForward this _forward)
        (:jm_setReverse this _reverse)
    this))
    
(set jm_setReverse (fn jm_setReverse [this _reverse]
        (set (this :f_reverse) _reverse)))
    
(set jm_getReverse (fn jm_getReverse [this]
    (label jreturn
        (return jreturn (this :f_reverse)))))
    
(set jm_setForward (fn jm_setForward [this _forward]
        (set (this :f_forward) _forward)))
    
(set jm_getForward (fn jm_getForward [this]
    (label jreturn
        (return jreturn (this :f_forward)))))

(set jproto @{:jm_setReverse jm_setReverse :jm_getReverse jm_getReverse :jm_setForward jm_setForward :jm_getForward jm_getForward})


