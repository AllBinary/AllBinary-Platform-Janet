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
# package org.allbinary.graphics.displayable

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AndroidUtil/jm_isAndroid [& args] (JR/call jfile "../../../../org/allbinary/AndroidUtil" "jm_isAndroid" args))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- DisplayChangeEvent/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/event/DisplayChangeEvent" "jnew_1" args))
(defn- DisplayChangeEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventHandler" "jm_getInstance" args))
(defn- LastDisplayChangeEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/event/LastDisplayChangeEventHandler" "jm_getInstance" args))
(defn- OpenGLFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" "jm_getInstance" args))
(defn- SWTJOGLProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/threed/SWTJOGLProcessor" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_putOE [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_putOE" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- OperatingSystemFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/system/os/OperatingSystemFactory" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- BaseScalable/jnew_0 [& args] (JR/call jfile "./BaseScalable" "jnew_0" args))

# Java class DisplayInfoSingleton
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getLastHalf nil)
(var jm_getLast nil)
(var jm_getFull nil)
(var jm_getScaleLargestTo nil)
(var jm_setScaleLargestTo nil)
(var jm_setLastSize nil)
(var jm_setLastSizeForce nil)
(var jm_isPortraitWH nil)
(var jm_isPortrait nil)
(var jm_add nil)
(var jm_process nil)
(var jm_processForced nil)
(var jm_update nil)
(var jm_toString nil)
(var jm_toStringAppend nil)
(var jm_getTop nil)
(var jm_getLeft nil)
(var jm_getLastWidth nil)
(var jm_getLastHeight nil)
(var jm_getLastHalfWidth nil)
(var jm_getLastHalfHeight nil)
(var jm_getCustomLastWidth nil)
(var jm_getCustomLastHeight nil)
(var jm_getRawLastWidth nil)
(var jm_getRawLastHeight nil)
(var jm_setCustom nil)
(var jm_setScalableListener nil)
(var jm_getScalableListener nil)
(var jm_getRatio nil)
(var jm_getDisplayRatio nil)
(var jm_setOffset nil)
(var jm_getxOffset nil)
(var jm_getyOffset nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DisplayInfoSingleton" :f_logUtil nil :f_commonLabels nil :f_commonSeps nil :f_commonStrings nil :f_ORIENTATION nil :f_ADJUSTING_FOR_SCALING_IN_PORTRAIT nil :f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE nil :f_last nil :f_lastHalf nil :f_full nil :f_top 0 :f_left 0 :f_xOffset 0 :f_yOffset 0 :f_scaleLargestTo 0.0 :f_WIDTH 0 :f_HEIGHT 0 :f_CUSTOM_WIDTH 0 :f_CUSTOM_HEIGHT 0 :f_scalableListener nil :f_displayRatio 0.0 :f_ratio 0.0 :f_SET_LAST_SIZE_METHOD_NAME nil :f_FULL_WIDTH nil :f_FULL_HEIGHT nil :f_LAST_WIDTH nil :f_LAST_HEIGHT nil :f_PORTRAIT nil :f_LANDSCAPE nil :f_displayChangeEvent nil :f_FIRE_METHOD_NAME nil :f_REASON nil :f_UPDATE_FROM_ORIENTATION_CHANGE nil :f_list nil :f_DISPLAY_INFO nil :f_FULL nil :f_LAST nil :f_LAST_HALF nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonLabels (CommonLabels/jm_getInstance))
    (put this :f_commonSeps (CommonSeps/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_ORIENTATION "ORIENTATION")
    (put this :f_ADJUSTING_FOR_SCALING_IN_PORTRAIT "Adjusting for Scaling in portrait display ratio: ")
    (put this :f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE "Adjusting for Scaling in landscape display ratio: ")
    (put this :f_last (array/new-filled 4 0))
    (put this :f_lastHalf (array/new-filled 4 0))
    (put this :f_full (array/new-filled 4 0))
    
    
    
    
    
    (put this :f_WIDTH 0)
    (put this :f_HEIGHT 1)
    (put this :f_CUSTOM_WIDTH 2)
    (put this :f_CUSTOM_HEIGHT 3)
    (put this :f_scalableListener (BaseScalable/jnew_0))
    
    (put this :f_ratio 1.0)
    (put this :f_SET_LAST_SIZE_METHOD_NAME "setLastSize")
    (put this :f_FULL_WIDTH " FullWidth: ")
    (put this :f_FULL_HEIGHT " FullHeight: ")
    (put this :f_LAST_WIDTH "LastWidth: ")
    (put this :f_LAST_HEIGHT " LastHeight: ")
    (put this :f_PORTRAIT "Portrait")
    (put this :f_LANDSCAPE "Landscape")
    (put this :f_displayChangeEvent (DisplayChangeEvent/jnew_1 this))
    (put this :f_FIRE_METHOD_NAME "fire")
    (put this :f_REASON "reason: ")
    (put this :f_UPDATE_FROM_ORIENTATION_CHANGE "Updating from Orientation Change ")
    (put this :f_list (BasicArrayListD/jnew_0))
    (put this :f_DISPLAY_INFO "Display Info: ")
    (put this :f_FULL "full")
    (put this :f_LAST "last")
    (put this :f_LAST_HALF "lastHalf")
        (var _size (length (this :f_last)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set ((this :f_last) _index) 0)
            (set ((this :f_lastHalf) _index) 0)
            (set ((this :f_full) _index) 0))
                (do (set _index (JR/i32 (+ _index 1))))))
        (if (AndroidUtil/jm_isAndroid)
            (do
            (set (this :f_scaleLargestTo) 640))
            (do
            (set (this :f_scaleLargestTo) 1080)))
    this))
    
(set jm_getLastHalf (fn jm_getLastHalf [this]
    (label jreturn
        (return jreturn (this :f_lastHalf)))))
    
(set jm_getLast (fn jm_getLast [this]
    (label jreturn
        (return jreturn (this :f_last)))))
    
(set jm_getFull (fn jm_getFull [this]
    (label jreturn
        (return jreturn (this :f_full)))))
    
(set jm_getScaleLargestTo (fn jm_getScaleLargestTo [this]
    (label jreturn
        (return jreturn (this :f_scaleLargestTo)))))
    
(set jm_setScaleLargestTo (fn jm_setScaleLargestTo [this _scaleLargestTo]
        (set (this :f_scaleLargestTo) _scaleLargestTo)))
    
(set jm_setLastSize (fn jm_setLastSize [this _aLastWidth _aLastHeight _reason]
        (if (or (not= ((this :f_full) (this :f_WIDTH)) _aLastWidth) (not= ((this :f_full) (this :f_HEIGHT)) _aLastHeight))
            (do
            (:jm_setLastSizeForce this _aLastWidth _aLastHeight _reason)))))
    
(set jm_setLastSizeForce (fn jm_setLastSizeForce [this _aLastWidth _aLastHeight _reason]
    (var _aLastWidth _aLastWidth)
    (var _aLastHeight _aLastHeight)
        (var _stringMaker (StringMaker/jnew_0))
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append _stringMaker ((CommonLabels/jm_getInstance) :f_START_LABEL)) _reason)) this (this :f_SET_LAST_SIZE_METHOD_NAME))
        (var _aFullWidth _aLastWidth)
        (var _aFullHeight _aLastHeight)
        (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_appendint (:jm_append (:jm_appendint (:jm_append _stringMaker (this :f_FULL_WIDTH)) _aFullWidth) (this :f_FULL_HEIGHT)) _aFullHeight) (:jm_toString this))) this (this :f_SET_LAST_SIZE_METHOD_NAME))
        (var _operatingSystemInterface (:jm_getOperatingSystemInstance (OperatingSystemFactory/jm_getInstance)))
        (if (:jm_isOverScan _operatingSystemInterface)
            (do
            (set _aLastWidth (JR/idiv (JR/i32 (* _aLastWidth (:jm_getOverScanXPercent _operatingSystemInterface))) 100))
            (set _aLastHeight (JR/idiv (JR/i32 (* _aLastHeight (:jm_getOverScanYPercent _operatingSystemInterface))) 100))))
        (if (:jm_isScalable _operatingSystemInterface)
            (do
            (if (:jm_isPortraitWH this _aLastWidth _aLastHeight)
                (do
                (if (> _aLastHeight (this :f_scaleLargestTo))
                    (do
                    (set (this :f_displayRatio) (/ (this :f_scaleLargestTo) _aLastHeight))
                    (set (this :f_ratio) (/ _aLastHeight (this :f_scaleLargestTo)))
                    (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                    (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendfloat (:jm_append _stringMaker (this :f_ADJUSTING_FOR_SCALING_IN_PORTRAIT)) (this :f_displayRatio))) this (this :f_SET_LAST_SIZE_METHOD_NAME))
                    (set _aLastWidth (JR/d2i (* _aLastWidth (this :f_displayRatio))))
                    (set _aLastHeight (JR/d2i (* _aLastHeight (this :f_displayRatio))))
                    (:jm_scale (this :f_scalableListener) (this :f_ratio)))
                    (do
                    (set (this :f_ratio) 1.0)
                    (:jm_scale (this :f_scalableListener) (this :f_ratio)))))
                (do
                (if (> _aLastWidth (this :f_scaleLargestTo))
                    (do
                    (set (this :f_displayRatio) (/ (this :f_scaleLargestTo) _aLastWidth))
                    (set (this :f_ratio) (/ _aLastWidth (this :f_scaleLargestTo)))
                    (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                    (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendfloat (:jm_append _stringMaker (this :f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE)) (this :f_displayRatio))) this (this :f_SET_LAST_SIZE_METHOD_NAME))
                    (set _aLastWidth (JR/d2i (* _aLastWidth (this :f_displayRatio))))
                    (set _aLastHeight (JR/d2i (* _aLastHeight (this :f_displayRatio))))
                    (:jm_scale (this :f_scalableListener) (this :f_ratio)))
                    (do
                    (set (this :f_ratio) 1.0)
                    (:jm_scale (this :f_scalableListener) (this :f_ratio))))))))
        (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (:jm_appendint (:jm_append _stringMaker (this :f_LAST_WIDTH)) _aLastWidth) (this :f_LAST_HEIGHT)) _aLastHeight)) this (this :f_SET_LAST_SIZE_METHOD_NAME))
        (set (this :f_xOffset) (JR/i32 (- _aFullWidth _aLastWidth)))
        (set (this :f_yOffset) (JR/i32 (- _aFullHeight _aLastHeight)))
        (set (this :f_left) (:jm_getLeft (this :f_scalableListener) (this :f_xOffset)))
        (set (this :f_top) (:jm_getTop (this :f_scalableListener) (this :f_yOffset)))
        (set ((this :f_full) (this :f_WIDTH)) _aFullWidth)
        (set ((this :f_full) (this :f_HEIGHT)) _aFullHeight)
        (set ((this :f_last) (this :f_WIDTH)) _aLastWidth)
        (set ((this :f_lastHalf) (this :f_WIDTH)) (brshift ((this :f_last) (this :f_WIDTH)) 1))
        (set ((this :f_last) (this :f_HEIGHT)) _aLastHeight)
        (set ((this :f_lastHalf) (this :f_HEIGHT)) (brshift ((this :f_last) (this :f_HEIGHT)) 1))
        (:jm_setCustom (SWTJOGLProcessor/jm_getInstance) _aLastWidth _aLastHeight (this :f_ratio))
        (:jm_add this (this :f_SET_LAST_SIZE_METHOD_NAME))))
    
(set jm_isPortraitWH (fn jm_isPortraitWH [this _lastWidth _lastHeight]
    (label jreturn
        (if (> _lastHeight _lastWidth)
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_isPortrait (fn jm_isPortrait [this]
    (label jreturn
        (return jreturn (:jm_isPortraitWH this ((this :f_last) (this :f_WIDTH)) ((this :f_last) (this :f_HEIGHT)))))))
    
(set jm_add (fn jm_add [this _reason]
        (var _stringMaker (StringMaker/jnew_0))
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append _stringMaker (this :f_REASON)) _reason)) this (this :f_FIRE_METHOD_NAME))
        (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
        (:jm_putF (this :f_logUtil) (:jm_toStringAppend this _stringMaker) this (this :f_FIRE_METHOD_NAME))
        (:jm_add (this :f_list) _reason)))
    
(set jm_process (fn jm_process [this]
        (try
            (do
            (if (> (:jm_size (this :f_list)) 0)
                (do
                (:jm_processForced this)))
            (:jm_clear (this :f_list)))
            ([_e] (do
            (PreLogUtil/jm_putOE ((this :f_commonStrings) :f_EXCEPTION) this (this :f_FIRE_METHOD_NAME) _e))))))
    
(set jm_processForced (fn jm_processForced [this]
        (try
            (do
            (var _swtJOGLProcessor (SWTJOGLProcessor/jm_getInstance))
            (:jm_clear _swtJOGLProcessor)
            (:jm_fireEvent (DisplayChangeEventHandler/jm_getInstance) (this :f_displayChangeEvent))
            (:jm_fireEvent (LastDisplayChangeEventHandler/jm_getInstance) (this :f_displayChangeEvent))
            (:jm_onSurfaceChanged _swtJOGLProcessor))
            ([_e] (do
            (PreLogUtil/jm_putOE ((this :f_commonStrings) :f_EXCEPTION) this (this :f_FIRE_METHOD_NAME) _e))))))
    
(set jm_update (fn jm_update [this _displayable _reason]
        (var _aLastWidth (:jm_getWidth _displayable))
        (var _aLastHeight (:jm_getHeight _displayable))
        (var _aFullWidth _aLastWidth)
        (var _aFullHeight _aLastHeight)
        (var _stringMaker (StringMaker/jnew_0))
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (:jm_appendint (:jm_append (:jm_appendint (:jm_append (:jm_append (:jm_append _stringMaker ((CommonLabels/jm_getInstance) :f_START_LABEL)) _reason) (this :f_LAST_WIDTH)) _aLastWidth) (this :f_LAST_HEIGHT)) _aLastHeight) ((this :f_commonSeps) :f_SPACE)) (:jm_toString this))) this ((this :f_commonStrings) :f_UPDATE))
        (if (and (> _aLastWidth 0) (> _aLastHeight 0))
            (do
            (var _features (Features/jm_getInstance))
            (var _openGLFeatureFactory (OpenGLFeatureFactory/jm_getInstance))
            (if (or (or (not (:jm_isDefault _features (_openGLFeatureFactory :f_OPENGL))) (not= ((this :f_last) (this :f_WIDTH)) _aLastWidth)) (not= ((this :f_last) (this :f_HEIGHT)) _aLastHeight))
                (do
                (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append _stringMaker (this :f_UPDATE_FROM_ORIENTATION_CHANGE))) this ((this :f_commonStrings) :f_UPDATE))
                (var _operatingSystemInterface (:jm_getOperatingSystemInstance (OperatingSystemFactory/jm_getInstance)))
                (if (:jm_isOverScan _operatingSystemInterface)
                    (do
                    (set _aLastWidth (JR/idiv (JR/i32 (* _aLastWidth (:jm_getOverScanXPercent _operatingSystemInterface))) 100))
                    (set _aLastHeight (JR/idiv (JR/i32 (* _aLastHeight (:jm_getOverScanYPercent _operatingSystemInterface))) 100))))
                (if (:jm_isScalable _operatingSystemInterface)
                    (do
                    (if (:jm_isPortraitWH this _aLastWidth _aLastHeight)
                        (do
                        (if (> _aLastHeight (this :f_scaleLargestTo))
                            (do
                            (set (this :f_displayRatio) (/ (this :f_scaleLargestTo) _aLastHeight))
                            (set (this :f_ratio) (/ _aLastHeight (this :f_scaleLargestTo)))
                            (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendfloat (:jm_append _stringMaker (this :f_ADJUSTING_FOR_SCALING_IN_PORTRAIT)) (this :f_displayRatio))) this ((this :f_commonStrings) :f_UPDATE))
                            (set _aLastWidth (JR/d2i (* _aLastWidth (this :f_displayRatio))))
                            (set _aLastHeight (JR/d2i (* _aLastHeight (this :f_displayRatio))))
                            (:jm_scale (this :f_scalableListener) (this :f_ratio)))
                            (do
                            (set (this :f_ratio) 1.0)
                            (:jm_scale (this :f_scalableListener) (this :f_ratio)))))
                        (do
                        (if (> _aLastWidth (this :f_scaleLargestTo))
                            (do
                            (set (this :f_displayRatio) (/ (this :f_scaleLargestTo) _aLastWidth))
                            (set (this :f_ratio) (/ _aLastWidth (this :f_scaleLargestTo)))
                            (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendfloat (:jm_append _stringMaker (this :f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE)) (this :f_displayRatio))) this ((this :f_commonStrings) :f_UPDATE))
                            (set _aLastWidth (JR/d2i (* _aLastWidth (this :f_displayRatio))))
                            (set _aLastHeight (JR/d2i (* _aLastHeight (this :f_displayRatio))))
                            (:jm_scale (this :f_scalableListener) (this :f_ratio)))
                            (do
                            (set (this :f_ratio) 1.0)
                            (:jm_scale (this :f_scalableListener) (this :f_ratio))))))))
                (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (:jm_appendint (:jm_append (:jm_append _stringMaker (this :f_UPDATE_FROM_ORIENTATION_CHANGE)) (this :f_LAST_WIDTH)) _aLastWidth) (this :f_LAST_HEIGHT)) _aLastHeight)) this ((this :f_commonStrings) :f_UPDATE))
                (set (this :f_xOffset) (JR/i32 (- _aFullWidth _aLastWidth)))
                (set (this :f_yOffset) (JR/i32 (- _aFullHeight _aLastHeight)))
                (set (this :f_left) (:jm_getLeft (this :f_scalableListener) (this :f_xOffset)))
                (set (this :f_top) (:jm_getTop (this :f_scalableListener) (this :f_yOffset)))
                (set ((this :f_full) (this :f_WIDTH)) _aFullWidth)
                (set ((this :f_full) (this :f_HEIGHT)) _aFullHeight)
                (set ((this :f_last) (this :f_WIDTH)) _aLastWidth)
                (set ((this :f_lastHalf) (this :f_WIDTH)) (brshift ((this :f_last) (this :f_WIDTH)) 1))
                (set ((this :f_last) (this :f_HEIGHT)) _aLastHeight)
                (set ((this :f_lastHalf) (this :f_HEIGHT)) (brshift ((this :f_last) (this :f_HEIGHT)) 1))
                (:jm_setCustom (SWTJOGLProcessor/jm_getInstance) _aLastWidth _aLastHeight (this :f_ratio))
                (:jm_add this ((this :f_commonStrings) :f_UPDATE))))))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (return jreturn (:jm_toStringAppend this _stringBuffer)))))
    
(set jm_toStringAppend (fn jm_toStringAppend [this _stringBuffer]
    (label jreturn
        (:jm_append _stringBuffer (this :f_DISPLAY_INFO))
        (:jm_append _stringBuffer (this :f_FULL))
        (:jm_append _stringBuffer ((this :f_commonLabels) :f_WIDTH_LABEL))
        (:jm_appendint _stringBuffer ((this :f_full) (this :f_WIDTH)))
        (:jm_append _stringBuffer ((this :f_commonSeps) :f_SPACE))
        (:jm_append _stringBuffer (this :f_FULL))
        (:jm_append _stringBuffer ((this :f_commonLabels) :f_HEIGHT_LABEL))
        (:jm_appendint _stringBuffer ((this :f_full) (this :f_HEIGHT)))
        (:jm_append _stringBuffer ((this :f_commonSeps) :f_SPACE))
        (:jm_append _stringBuffer (this :f_LAST))
        (:jm_append _stringBuffer ((this :f_commonLabels) :f_WIDTH_LABEL))
        (:jm_appendint _stringBuffer ((this :f_last) (this :f_WIDTH)))
        (:jm_append _stringBuffer ((this :f_commonSeps) :f_SPACE))
        (:jm_append _stringBuffer (this :f_LAST))
        (:jm_append _stringBuffer ((this :f_commonLabels) :f_HEIGHT_LABEL))
        (:jm_appendint _stringBuffer ((this :f_last) (this :f_HEIGHT)))
        (:jm_append _stringBuffer ((this :f_commonSeps) :f_SPACE))
        (:jm_append _stringBuffer (this :f_LAST_HALF))
        (:jm_append _stringBuffer ((this :f_commonLabels) :f_WIDTH_LABEL))
        (:jm_appendint _stringBuffer ((this :f_lastHalf) (this :f_WIDTH)))
        (:jm_append _stringBuffer ((this :f_commonSeps) :f_SPACE))
        (:jm_append _stringBuffer (this :f_LAST_HALF))
        (:jm_append _stringBuffer ((this :f_commonLabels) :f_HEIGHT_LABEL))
        (:jm_appendint _stringBuffer ((this :f_lastHalf) (this :f_HEIGHT)))
        (:jm_append _stringBuffer ((this :f_commonSeps) :f_SPACE))
        (:jm_append _stringBuffer (if (:jm_isPortrait this) (this :f_PORTRAIT) (this :f_LANDSCAPE)))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_getTop (fn jm_getTop [this]
    (label jreturn
        (return jreturn (this :f_top)))))
    
(set jm_getLeft (fn jm_getLeft [this]
    (label jreturn
        (return jreturn (this :f_left)))))
    
(set jm_getLastWidth (fn jm_getLastWidth [this]
    (label jreturn
        (return jreturn ((this :f_last) (this :f_WIDTH))))))
    
(set jm_getLastHeight (fn jm_getLastHeight [this]
    (label jreturn
        (return jreturn ((this :f_last) (this :f_HEIGHT))))))
    
(set jm_getLastHalfWidth (fn jm_getLastHalfWidth [this]
    (label jreturn
        (return jreturn ((this :f_lastHalf) (this :f_WIDTH))))))
    
(set jm_getLastHalfHeight (fn jm_getLastHalfHeight [this]
    (label jreturn
        (return jreturn ((this :f_lastHalf) (this :f_HEIGHT))))))
    
(set jm_getCustomLastWidth (fn jm_getCustomLastWidth [this]
    (label jreturn
        (return jreturn ((this :f_last) (this :f_CUSTOM_WIDTH))))))
    
(set jm_getCustomLastHeight (fn jm_getCustomLastHeight [this]
    (label jreturn
        (return jreturn ((this :f_last) (this :f_CUSTOM_HEIGHT))))))
    
(set jm_getRawLastWidth (fn jm_getRawLastWidth [this]
    (label jreturn
        (return jreturn ((this :f_last) (this :f_WIDTH))))))
    
(set jm_getRawLastHeight (fn jm_getRawLastHeight [this]
    (label jreturn
        (return jreturn ((this :f_last) (this :f_HEIGHT))))))
    
(set jm_setCustom (fn jm_setCustom [this _width _height]
        (set ((this :f_last) (this :f_CUSTOM_WIDTH)) _width)
        (set ((this :f_lastHalf) (this :f_CUSTOM_WIDTH)) (brshift ((this :f_last) (this :f_CUSTOM_WIDTH)) 1))
        (set ((this :f_last) (this :f_CUSTOM_HEIGHT)) _height)
        (set ((this :f_lastHalf) (this :f_CUSTOM_HEIGHT)) (brshift ((this :f_last) (this :f_CUSTOM_HEIGHT)) 1))))
    
(set jm_setScalableListener (fn jm_setScalableListener [this _scalableListener]
        (set (this :f_scalableListener) _scalableListener)))
    
(set jm_getScalableListener (fn jm_getScalableListener [this]
    (label jreturn
        (return jreturn (this :f_scalableListener)))))
    
(set jm_getRatio (fn jm_getRatio [this]
    (label jreturn
        (return jreturn (this :f_ratio)))))
    
(set jm_getDisplayRatio (fn jm_getDisplayRatio [this]
    (label jreturn
        (return jreturn (this :f_displayRatio)))))
    
(set jm_setOffset (fn jm_setOffset [this _left _top]
        (set (this :f_left) _left)))
    
(set jm_getxOffset (fn jm_getxOffset [this]
    (label jreturn
        (return jreturn (this :f_xOffset)))))
    
(set jm_getyOffset (fn jm_getyOffset [this]
    (label jreturn
        (return jreturn (this :f_yOffset)))))

(set jproto @{:jm_getLastHalf jm_getLastHalf :jm_getLast jm_getLast :jm_getFull jm_getFull :jm_getScaleLargestTo jm_getScaleLargestTo :jm_setScaleLargestTo jm_setScaleLargestTo :jm_setLastSize jm_setLastSize :jm_setLastSizeForce jm_setLastSizeForce :jm_isPortraitWH jm_isPortraitWH :jm_isPortrait jm_isPortrait :jm_add jm_add :jm_process jm_process :jm_processForced jm_processForced :jm_update jm_update :jm_toString jm_toString :jm_toStringAppend jm_toStringAppend :jm_getTop jm_getTop :jm_getLeft jm_getLeft :jm_getLastWidth jm_getLastWidth :jm_getLastHeight jm_getLastHeight :jm_getLastHalfWidth jm_getLastHalfWidth :jm_getLastHalfHeight jm_getLastHalfHeight :jm_getCustomLastWidth jm_getCustomLastWidth :jm_getCustomLastHeight jm_getCustomLastHeight :jm_getRawLastWidth jm_getRawLastWidth :jm_getRawLastHeight jm_getRawLastHeight :jm_setCustom jm_setCustom :jm_setScalableListener jm_setScalableListener :jm_getScalableListener jm_getScalableListener :jm_getRatio jm_getRatio :jm_getDisplayRatio jm_getDisplayRatio :jm_setOffset jm_setOffset :jm_getxOffset jm_getxOffset :jm_getyOffset jm_getyOffset})


