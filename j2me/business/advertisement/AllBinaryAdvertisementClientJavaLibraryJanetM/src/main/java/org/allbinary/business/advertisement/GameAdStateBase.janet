# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(defn- Advertisements/jnew_0 [& args] (JR/call jfile "./Advertisements" "jnew_0" args))

# Java class GameAdStateBase
(var jproto nil)
(var jnew_1 nil)
(var jm_initViewArray nil)
(var jm_onStart nil)
(var jm_init nil)
(var jm_isShowingAtLocation nil)
(var jm_isShowingAt nil)
(var jm_show nil)
(var jm_hide nil)
(var jm_onEvent nil)
(var jm_processAdState nil)
(var jm_processPageAdState nil)
(var jm_playingAdState nil)
(var jm_playingAdStateWH nil)
(var jm_notPlayingAdState nil)
(var jm_setGameIsReady nil)
(var jm_isGameIsReady nil)
(var jm_getAdvertisements nil)
(var jm_getAdConfiguration nil)
(var jm_isOkayToShowPageAd nil)
(var jm_setOkayToShowAds nil)
(var jm_isOkayToShowAds nil)
(var jm_isEnabled nil)

    
(set jnew_1 (fn jnew_1 [_adConfiguration]
    (var this (table/setproto @{:jclass "GameAdStateBase" :f_adConfigurationP nil :f_advertisementsP nil :f_okayToShowAdsP false} jproto))
    
    (put this :f_advertisementsP (Advertisements/jnew_0))
    
        (set (this :f_adConfigurationP) _adConfiguration)
    this))
    
(set jm_initViewArray (fn jm_initViewArray [this _viewArray]
    nil))
    
(set jm_onStart (fn jm_onStart [this _anyType]
        (:jm_init this)))
    
(set jm_init (fn jm_init [this]
    nil))
    
(set jm_isShowingAtLocation (fn jm_isShowingAtLocation [this _location]
    (label jreturn
        (return jreturn false))))
    
(set jm_isShowingAt (fn jm_isShowingAt [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_show (fn jm_show [this]
    nil))
    
(set jm_hide (fn jm_hide [this]
    nil))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_processAdState (fn jm_processAdState [this _gameState _gameType]
    nil))
    
(set jm_processPageAdState (fn jm_processPageAdState [this]
    nil))
    
(set jm_playingAdState (fn jm_playingAdState [this]
    nil))
    
(set jm_playingAdStateWH (fn jm_playingAdStateWH [this _width _height]
    nil))
    
(set jm_notPlayingAdState (fn jm_notPlayingAdState [this]
    nil))
    
(set jm_setGameIsReady (fn jm_setGameIsReady [this _gameIsReady]
    nil))
    
(set jm_isGameIsReady (fn jm_isGameIsReady [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_getAdvertisements (fn jm_getAdvertisements [this]
    (label jreturn
        (return jreturn (this :f_advertisementsP)))))
    
(set jm_getAdConfiguration (fn jm_getAdConfiguration [this]
    (label jreturn
        (return jreturn (this :f_adConfigurationP)))))
    
(set jm_isOkayToShowPageAd (fn jm_isOkayToShowPageAd [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_setOkayToShowAds (fn jm_setOkayToShowAds [this _okayToShowAds]
        (set (this :f_okayToShowAdsP) _okayToShowAds)))
    
(set jm_isOkayToShowAds (fn jm_isOkayToShowAds [this]
    (label jreturn
        (return jreturn (this :f_okayToShowAdsP)))))
    
(set jm_isEnabled (fn jm_isEnabled [this]
    (label jreturn
        (return jreturn false))))

(set jproto @{:jm_initViewArray jm_initViewArray :jm_onStart jm_onStart :jm_init jm_init :jm_isShowingAtLocation jm_isShowingAtLocation :jm_isShowingAt jm_isShowingAt :jm_show jm_show :jm_hide jm_hide :jm_onEvent jm_onEvent :jm_processAdState jm_processAdState :jm_processPageAdState jm_processPageAdState :jm_playingAdState jm_playingAdState :jm_playingAdStateWH jm_playingAdStateWH :jm_notPlayingAdState jm_notPlayingAdState :jm_setGameIsReady jm_setGameIsReady :jm_isGameIsReady jm_isGameIsReady :jm_getAdvertisements jm_getAdvertisements :jm_getAdConfiguration jm_getAdConfiguration :jm_isOkayToShowPageAd jm_isOkayToShowPageAd :jm_setOkayToShowAds jm_setOkayToShowAds :jm_isOkayToShowAds jm_isOkayToShowAds :jm_isEnabled jm_isEnabled})


