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
# package org.allbinary.media.audio

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/io/InputStream :as InputStream)
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- ProgressCanvasFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- Sounds/jnew_1 [& args] (JR/call jfile "./Sounds" "jnew_1" args))
(defn- NoPlayer/jstatic_NO_PLAYER [& args] (JR/call jfile "./NoPlayer" "jstatic_NO_PLAYER" args))

#NotDeviceSpecificNoMediaMIDP1Library
# Java class AllBinaryMediaManager
(var jproto nil)
(var jcell_THIS :jnone)
(var jstatic_THIS nil)
(var jsetstatic_THIS nil)
(var jnew_0 nil)
(var jm_isMuted nil)
(var jm_setMuted nil)
(var jm_update nil)
(var jm_init nil)
(var jm_shutdown nil)
(var jm_createPlayerFromInputStream nil)
(var jm_createPlayer nil)
(var jm_playTone nil)
(var jm_getSupportedContentTypes nil)
(var jm_getSupportedProtocols nil)

(set jstatic_THIS (fn jstatic_THIS []
  (when (= jcell_THIS :jnone) (set jcell_THIS "AllBinaryMediaManagerNoMediaMIDP1"))
  jcell_THIS))
(set jsetstatic_THIS (fn jsetstatic_THIS [value] (set jcell_THIS value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllBinaryMediaManager"} jproto))
    this))
    
(set jm_isMuted (fn jm_isMuted []
    (label jreturn
        (return jreturn false))))
    
(set jm_setMuted (fn jm_setMuted [_aMuted]
    nil))
    
(set jm_update (fn jm_update []
    (label jreturn
        (return jreturn true))))
    
(set jm_init (fn jm_init [_soundsFactoryInterface]
        (var _logUtil (LogUtil/jm_getInstance))
        (var _commonString (CommonStrings/jm_getInstance))
        (:jm_putF _logUtil (_commonString :f_START) (jstatic_THIS) (_commonString :f_INIT))
        (:jm_addNormalPortion (ProgressCanvasFactory/jm_getInstance) 50 "Media Manager")
        (:jm_init (Sounds/jnew_1 _soundsFactoryInterface))))
    
(set jm_shutdown (fn jm_shutdown [_soundsFactoryInterface]
        (:jm_stopAll (Sounds/jnew_1 _soundsFactoryInterface))
        (:jm_closeAll (Sounds/jnew_1 _soundsFactoryInterface))
        (:jm_gc (TsUtil/jm_getInstance))))
    
(set jm_createPlayerFromInputStream (fn jm_createPlayerFromInputStream [_stream _type]
    (label jreturn
        (var _logUtil (LogUtil/jm_getInstance))
        (var _commonString (CommonStrings/jm_getInstance))
        (:jm_putF _logUtil (_commonString :f_START) (jstatic_THIS) "creatPlayer(InputStream)")
        (return jreturn (NoPlayer/jstatic_NO_PLAYER)))))
    
(set jm_createPlayer (fn jm_createPlayer [_locator]
    (label jreturn
        (var _logUtil (LogUtil/jm_getInstance))
        (var _commonString (CommonStrings/jm_getInstance))
        (:jm_putF _logUtil (_commonString :f_START) (jstatic_THIS) "creatPlayer(locator)")
        (return jreturn (NoPlayer/jstatic_NO_PLAYER)))))
    
(set jm_playTone (fn jm_playTone [_frequency _time _volume]
    nil))
    
(set jm_getSupportedContentTypes (fn jm_getSupportedContentTypes [_protocol]
    (label jreturn
        (return jreturn (:jm_getArrayInstance (StringUtil/jm_getInstance))))))
    
(set jm_getSupportedProtocols (fn jm_getSupportedProtocols [_content_type]
    (label jreturn
        (return jreturn (:jm_getArrayInstance (StringUtil/jm_getInstance))))))

(set jproto @{})


