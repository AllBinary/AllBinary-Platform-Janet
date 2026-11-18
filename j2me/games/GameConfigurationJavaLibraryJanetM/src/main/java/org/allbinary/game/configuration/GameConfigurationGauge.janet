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
# package org.allbinary.game.configuration

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../javax/microedition/lcdui/Gauge :as Gauge)

# Java class GameConfigurationGauge
(var jproto nil)
(var jnew_1 nil)

    
(set jnew_1 (fn jnew_1 [_gameConfiguration]
    (var this (table/setproto @{:jclass "GameConfigurationGauge"} jproto))
        (JR/superInit this (Gauge/jnew_4 (:jm_getName _gameConfiguration) (JR/className (:jm_isModifiable _gameConfiguration)) (JR/i32 (- (JR/className (:jm_getMaxValue _gameConfiguration)) (JR/className (:jm_getMinValue _gameConfiguration)))) (JR/i32 (- (JR/className (:jm_getValue _gameConfiguration)) (JR/className (:jm_getMinValue _gameConfiguration))))))
    this))

(set jproto (table/setproto @{} Gauge/jproto))


