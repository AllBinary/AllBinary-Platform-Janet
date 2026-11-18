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
(defn- ResourceLoadingLevelFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" "jm_getInstance" args))
(import ../../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)

# Java class GameInitializedEvent
(var jproto nil)
(var jnew_1 nil)
(var jm_setLevel nil)
(var jm_getLevel nil)
(var jm_setResourceLoadingLevel nil)
(var jm_getResourceLoadingLevel nil)

    
(set jnew_1 (fn jnew_1 [_anyType]
    (var this (table/setproto @{:jclass "GameInitializedEvent" :f_resourceLoadingLevel nil :f_level 0} jproto))
    (put this :f_resourceLoadingLevel ((ResourceLoadingLevelFactory/jm_getInstance) :f_LEVEL))
    
        (JR/superInit this (AllBinaryEventObject/jnew_1 _anyType))
    this))
    
(set jm_setLevel (fn jm_setLevel [this _level]
        (set (this :f_level) _level)
        (set (this :f_resourceLoadingLevel) ((ResourceLoadingLevelFactory/jm_getInstance) :f_LEVEL))))
    
(set jm_getLevel (fn jm_getLevel [this]
    (label jreturn
        (return jreturn (this :f_level)))))
    
(set jm_setResourceLoadingLevel (fn jm_setResourceLoadingLevel [this _resourceLoadingLevel]
        (set (this :f_resourceLoadingLevel) _resourceLoadingLevel)
        (set (this :f_level) (:jm_getLevel (this :f_resourceLoadingLevel)))))
    
(set jm_getResourceLoadingLevel (fn jm_getResourceLoadingLevel [this]
    (label jreturn
        (return jreturn (this :f_resourceLoadingLevel)))))

(set jproto (table/setproto @{:jm_setLevel jm_setLevel :jm_getLevel jm_getLevel :jm_setResourceLoadingLevel jm_setResourceLoadingLevel :jm_getResourceLoadingLevel jm_getResourceLoadingLevel} AllBinaryEventObject/jproto))


