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
# package org.allbinary.graphics.displayable.command

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class MyCommandInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_addCommand nil)
(var jm_removeAllCommands nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MyCommandInterface"} jproto))
    this))

    
(set jm_addCommand (fn jm_addCommand [this _command]
    (error (JR/newException "AbstractMethodError" "addCommand"))))
    
(set jm_removeAllCommands (fn jm_removeAllCommands [this]
    (error (JR/newException "AbstractMethodError" "removeAllCommands"))))

(set jproto @{:jm_addCommand jm_addCommand :jm_removeAllCommands jm_removeAllCommands})


