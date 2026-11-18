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
# package org.allbinary.input.motion.button

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TouchButtonsPaintable/jnew_1 [& args] (JR/call jfile "./TouchButtonsPaintable" "jnew_1" args))

# Java class TouchButtonsPaintableFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TouchButtonsPaintableFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [_basicColor]
    (label jreturn
        (return jreturn (TouchButtonsPaintable/jnew_1 _basicColor)))))

(set jproto @{})


