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
# package org.allbinary.graphics.displayable

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class DisplayableInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_addCommand nil)
(var jm_getHeight nil)
(var jm_getWidth nil)
(var jm_removeCommand nil)
(var jm_setCommandListener nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DisplayableInterface"} jproto))
    this))

    
(set jm_addCommand (fn jm_addCommand [this _cmd]
    (error (JR/newException "AbstractMethodError" "addCommand"))))
    
(set jm_getHeight (fn jm_getHeight [this]
    (error (JR/newException "AbstractMethodError" "getHeight"))))
    
(set jm_getWidth (fn jm_getWidth [this]
    (error (JR/newException "AbstractMethodError" "getWidth"))))
    
(set jm_removeCommand (fn jm_removeCommand [this _cmd]
    (error (JR/newException "AbstractMethodError" "removeCommand"))))
    
(set jm_setCommandListener (fn jm_setCommandListener [this _l]
    (error (JR/newException "AbstractMethodError" "setCommandListener"))))

(set jproto @{:jm_addCommand jm_addCommand :jm_getHeight jm_getHeight :jm_getWidth jm_getWidth :jm_removeCommand jm_removeCommand :jm_setCommandListener jm_setCommandListener})


