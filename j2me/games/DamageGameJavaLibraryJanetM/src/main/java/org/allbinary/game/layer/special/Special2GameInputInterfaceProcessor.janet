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
# package org.allbinary.game.layer.special

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./SpecialGameInputInterfaceProcessor :as SpecialGameInputInterfaceProcessor)

# Java class Special2GameInputInterfaceProcessor
(var jproto nil)
(var jnew_1 nil)
(var jm_processEvent nil)

    
(set jnew_1 (fn jnew_1 [_collidableDestroyableDamageableLayer]
    (var this (table/setproto @{:jclass "Special2GameInputInterfaceProcessor"} jproto))
        (JR/superInit this (SpecialGameInputInterfaceProcessor/jnew_1 _collidableDestroyableDamageableLayer))
    this))
    
(set jm_processEvent (fn jm_processEvent [this _allbinaryLayerManager _gameKeyEvent]
        (JR/className (this :f_specialGameInputInterface))))

(set jproto (table/setproto @{:jm_processEvent jm_processEvent} SpecialGameInputInterfaceProcessor/jproto))


