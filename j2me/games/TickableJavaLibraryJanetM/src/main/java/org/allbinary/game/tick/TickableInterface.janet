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
# package org.allbinary.game.tick

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/layer/NamedInterface :as NamedInterface)

# Java class TickableInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_processTick nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TickableInterface"} jproto))
    this))

    
(set jm_processTick (fn jm_processTick [this _allBinaryLayerManager]
    (error (JR/newException "AbstractMethodError" "processTick"))))

(set jproto @{:jm_processTick jm_processTick})


