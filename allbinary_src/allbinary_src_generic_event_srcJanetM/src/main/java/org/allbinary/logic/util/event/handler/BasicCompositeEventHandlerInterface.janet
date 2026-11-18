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

# Java class BasicCompositeEventHandlerInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getEventHandler nil)
(var jm_setEventHandler nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicCompositeEventHandlerInterface"} jproto))
    this))

    
(set jm_getEventHandler (fn jm_getEventHandler [this]
    (error (JR/newException "AbstractMethodError" "getEventHandler"))))
    
(set jm_setEventHandler (fn jm_setEventHandler [this _basicEventHandlerInterface]
    (error (JR/newException "AbstractMethodError" "setEventHandler"))))

(set jproto @{:jm_getEventHandler jm_getEventHandler :jm_setEventHandler jm_setEventHandler})


