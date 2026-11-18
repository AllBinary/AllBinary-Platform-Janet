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
(import ./SpecialGameInputProcessor :as SpecialGameInputProcessor)

# Java class SpecialAnalogUpGameInputProcessor
(var jproto nil)
(var jnew_1 nil)
(var jm_processAnalog nil)

    
(set jnew_1 (fn jnew_1 [_collidableDestroyableDamageableLayer]
    (var this (table/setproto @{:jclass "SpecialAnalogUpGameInputProcessor"} jproto))
        (JR/superInit this (SpecialGameInputProcessor/jnew_1 _collidableDestroyableDamageableLayer))
    this))
    
(set jm_processAnalog (fn jm_processAnalog [this _allbinaryLayerManager _gameKeyEvent _yAnalogValue]
        (:jm_upAnalog (this :f_collidableDestroyableDamageableLayer) _yAnalogValue)))

(set jproto (table/setproto @{:jm_processAnalog jm_processAnalog} SpecialGameInputProcessor/jproto))


