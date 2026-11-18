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
# package org.allbinary.animation.transition.shake

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NoShakeAnimationListener/jnew_0 [& args] (JR/call jfile "./NoShakeAnimationListener" "jnew_0" args))

# Java class ShakeAnimationListenerFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ShakeAnimationListenerFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (NoShakeAnimationListener/jnew_0)))))

(set jproto @{})


