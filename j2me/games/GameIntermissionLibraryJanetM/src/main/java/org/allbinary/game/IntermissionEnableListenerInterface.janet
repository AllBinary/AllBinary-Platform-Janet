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
# package org.allbinary.game

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class IntermissionEnableListenerInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_notifyIntermission nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "IntermissionEnableListenerInterface"} jproto))
    this))

    
(set jm_notifyIntermission (fn jm_notifyIntermission [this _enable]
    (error (JR/newException "AbstractMethodError" "notifyIntermission"))))

(set jproto @{:jm_notifyIntermission jm_notifyIntermission})


