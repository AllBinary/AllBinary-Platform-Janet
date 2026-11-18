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
# package org.allbinary.logic.util.event.handler

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class BasicEventHandlerInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_addListenerInterface nil)
(var jm_fireEvent nil)
(var jm_removeAllListeners nil)
(var jm_removeListener nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicEventHandlerInterface"} jproto))
    this))

    
(set jm_addListenerInterface (fn jm_addListenerInterface [this _eventListenerInterface]
    (error (JR/newException "AbstractMethodError" "addListenerInterface"))))
    
(set jm_fireEvent (fn jm_fireEvent [this _eventObject]
    (error (JR/newException "AbstractMethodError" "fireEvent"))))
    
(set jm_removeAllListeners (fn jm_removeAllListeners [this]
    (error (JR/newException "AbstractMethodError" "removeAllListeners"))))
    
(set jm_removeListener (fn jm_removeListener [this _eventListenerInterface]
    (error (JR/newException "AbstractMethodError" "removeListener"))))

(set jproto @{:jm_addListenerInterface jm_addListenerInterface :jm_fireEvent jm_fireEvent :jm_removeAllListeners jm_removeAllListeners :jm_removeListener jm_removeListener})


