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
# package org.allbinary.game.multiplayer.client

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class PingInfoCompositeInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_setPingInfo nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PingInfoCompositeInterface"} jproto))
    this))

    
(set jm_setPingInfo (fn jm_setPingInfo [this _show]
    (error (JR/newException "AbstractMethodError" "setPingInfo"))))

(set jproto @{:jm_setPingInfo jm_setPingInfo})


