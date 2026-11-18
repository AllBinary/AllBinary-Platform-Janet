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
# package org.allbinary.game.configuration.event

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)

# Java class GameFeatureEvent
(var jproto nil)
(var jnew_2 nil)
(var jm_getWhatChanged nil)
(var jm_getGameOption nil)

    
(set jnew_2 (fn jnew_2 [_anyType _whatChanged]
    (var this (table/setproto @{:jclass "GameFeatureEvent" :f_whatChanged nil} jproto))
    
        (JR/superInit this (AllBinaryEventObject/jnew_1 _anyType))
        (set (this :f_whatChanged) _whatChanged)
    this))
    
(set jm_getWhatChanged (fn jm_getWhatChanged [this]
    (label jreturn
        (return jreturn (this :f_whatChanged)))))
    
(set jm_getGameOption (fn jm_getGameOption [this]
    (label jreturn
        (return jreturn (:jm_getSource this)))))

(set jproto (table/setproto @{:jm_getWhatChanged jm_getWhatChanged :jm_getGameOption jm_getGameOption} AllBinaryEventObject/jproto))


