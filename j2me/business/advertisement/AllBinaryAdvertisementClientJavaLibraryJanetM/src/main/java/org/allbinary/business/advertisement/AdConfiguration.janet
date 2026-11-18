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
# package org.allbinary.business.advertisement

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class AdConfiguration
(var jproto nil)
(var jnew_1 nil)
(var jm_getValidAdSpots nil)
(var jm_process nil)
(var jm_processDemo nil)
(var jm_setShowAds nil)
(var jm_setToggleAds nil)
(var jm_isShowAds nil)

    
(set jnew_1 (fn jnew_1 [_advertIdArray]
    (var this (table/setproto @{:jclass "AdConfiguration" :f_INNERACTIVE nil :f_LEADBOLT nil :f_ADMOB nil} jproto))
    
    
    
        (set (this :f_INNERACTIVE) (_advertIdArray 0))
        (set (this :f_ADMOB) (_advertIdArray 1))
        (set (this :f_LEADBOLT) (_advertIdArray 2))
    this))
    
(set jm_getValidAdSpots (fn jm_getValidAdSpots [this]
    (label jreturn
        (return jreturn (array/new-filled 0 nil)))))
    
(set jm_process (fn jm_process [this _gameState]
    nil))
    
(set jm_processDemo (fn jm_processDemo [this _state]
    nil))
    
(set jm_setShowAds (fn jm_setShowAds [this]
    nil))
    
(set jm_setToggleAds (fn jm_setToggleAds [this _showAds]
    nil))
    
(set jm_isShowAds (fn jm_isShowAds [this]
    (label jreturn
        (return jreturn true))))

(set jproto @{:jm_getValidAdSpots jm_getValidAdSpots :jm_process jm_process :jm_processDemo jm_processDemo :jm_setShowAds jm_setShowAds :jm_setToggleAds jm_setToggleAds :jm_isShowAds jm_isShowAds})


