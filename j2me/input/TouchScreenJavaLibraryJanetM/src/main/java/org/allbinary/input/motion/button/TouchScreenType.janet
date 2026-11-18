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

# Java class TouchScreenType
(var jproto nil)
(var jnew_1 nil)
(var jm_getName nil)
(var jm_toString nil)

    
(set jnew_1 (fn jnew_1 [_name]
    (var this (table/setproto @{:jclass "TouchScreenType" :f_name nil} jproto))
    
        (set (this :f_name) _name)
    this))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_getName this)))))

(set jproto @{:jm_getName jm_getName :jm_toString jm_toString})


