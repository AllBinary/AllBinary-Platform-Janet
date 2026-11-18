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
# package org.allbinary.game.ag.ai.scroller

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class TimeFiredInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getLastFireTime nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TimeFiredInterface"} jproto))
    this))

    
(set jm_getLastFireTime (fn jm_getLastFireTime [this]
    (error (JR/newException "AbstractMethodError" "getLastFireTime"))))

(set jproto @{:jm_getLastFireTime jm_getLastFireTime})


