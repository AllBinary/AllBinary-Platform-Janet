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
# package org.allbinary.game.layer

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_size nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this _level]
    (error (JR/newException "AbstractMethodError" "getInstance"))))
    
(set jm_size (fn jm_size [this]
    (error (JR/newException "AbstractMethodError" "size"))))

(set jproto @{:jm_getInstance jm_getInstance :jm_size jm_size})


