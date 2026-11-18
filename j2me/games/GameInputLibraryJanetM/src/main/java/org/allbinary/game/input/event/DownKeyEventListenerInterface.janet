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
# package org.allbinary.game.input.event

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../org/allbinary/logic/util/event/EventListenerInterface :as EventListenerInterface)
(import ../../../../../java/lang/Integer :as Integer)

# Java class DownKeyEventListenerInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_onDownKeyEvent nil)
(var jm_onDownKey nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DownKeyEventListenerInterface"} jproto))
    this))

    
(set jm_onDownKeyEvent (fn jm_onDownKeyEvent [this _keyInteger]
    (error (JR/newException "AbstractMethodError" "onDownKeyEvent"))))
    
(set jm_onDownKey (fn jm_onDownKey [this _keyInteger]
    (error (JR/newException "AbstractMethodError" "onDownKey"))))

(set jproto @{:jm_onDownKeyEvent jm_onDownKeyEvent :jm_onDownKey jm_onDownKey})


