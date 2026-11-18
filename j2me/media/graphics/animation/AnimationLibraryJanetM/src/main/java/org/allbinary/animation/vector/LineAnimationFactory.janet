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
# package org.allbinary.animation.vector

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LineAnimation/jnew_1 [& args] (JR/call jfile "./LineAnimation" "jnew_1" args))

# Java class LineAnimationFactory
(var jproto nil)
(var jnew_1 nil)
(var jm_getInstance nil)
(var jm_setInitialScale nil)

    
(set jnew_1 (fn jnew_1 [_basicColor]
    (var this (table/setproto @{:jclass "LineAnimationFactory" :f_basicColor nil} jproto))
    
        (set (this :f_basicColor) _basicColor)
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (return jreturn (LineAnimation/jnew_1 (this :f_basicColor))))))
    
(set jm_setInitialScale (fn jm_setInitialScale [this _scaleProperties]
    nil))

(set jproto @{:jm_getInstance jm_getInstance :jm_setInitialScale jm_setInitialScale})


