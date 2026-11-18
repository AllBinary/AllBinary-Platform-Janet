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
(defn- ProgressCanvasFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)
(defn- SoundStrings/jm_getInstance [& args] (JR/call jfile "./SoundStrings" "jm_getInstance" args))

# Java class Sounds
(var jproto nil)
(var jnew_1 nil)
(var jm_init nil)
(var jm_stopAll nil)
(var jm_closeAll nil)

    
(set jnew_1 (fn jnew_1 [_soundsFactoryInterface]
    (var this (table/setproto @{:jclass "Sounds" :f_logUtil nil :f_commonStrings nil :f_soundStrings nil :f_soundsFactoryInterface nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_soundStrings (SoundStrings/jm_getInstance))
    
        (set (this :f_soundsFactoryInterface) _soundsFactoryInterface)
    this))
    
(set jm_init (fn jm_init [this]
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this ((this :f_commonStrings) :f_INIT))
        (var _commonLabels (CommonLabels/jm_getInstance))
        (var _progressCanvas (ProgressCanvasFactory/jm_getInstance))
        (:jm_init (this :f_soundsFactoryInterface))
        (var _soundInterfaceArray (:jm_getSoundInterfaceArray (this :f_soundsFactoryInterface)))
        (var _smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
        (var _indexInteger nil)
        (var _indexString nil)
        (var _stringBuffer (StringMaker/jnew_0))
        (do
            (var _i 0)
            (while (< _i (length _soundInterfaceArray))
                (do
            (var _soundInterface (_soundInterfaceArray _i))
            (if (not (nil? _soundInterface))
                (do
                (set _indexInteger (:jm_getAt _smallIntegerSingletonFactory _i))
                (set _indexString (:jm_toString _indexInteger))
                (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
                (:jm_append _stringBuffer (_commonLabels :f_INDEX_LABEL))
                (:jm_append _stringBuffer _indexString)
                (:jm_append _stringBuffer ((this :f_soundStrings) :f_SOUND))
                (:jm_append _stringBuffer (JR/className _soundInterface))
                (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this ((this :f_commonStrings) :f_INIT))
                (:jm_init _soundInterface)
                (:jm_addNormalPortion _progressCanvas 100 (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((this :f_soundStrings) :f_INIT_SOUND)) _indexString))))))
                (do (set _i (JR/i32 (+ _i 1))))))
        (:jm_setInitialized (this :f_soundsFactoryInterface) true)
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_END) this ((this :f_commonStrings) :f_INIT))))
    
(set jm_stopAll (fn jm_stopAll [this]
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this ((this :f_soundStrings) :f_STOP_ALL))
        (var _soundInterfaceArray (:jm_getSoundInterfaceArray (this :f_soundsFactoryInterface)))
        (var _progressCanvas (ProgressCanvasFactory/jm_getInstance))
        (var _player nil)
        (do
            (var _index 0)
            (while (< _index (length _soundInterfaceArray))
                (do
            (if (not (nil? (_soundInterfaceArray _index)))
                (do
                (set _player (JR/className (_soundInterfaceArray _index)))
                (if (not (nil? _player))
                    (do
                    (:jm_stop _player)
                    (:jm_addPortion _progressCanvas 100 ((this :f_soundStrings) :f_STOPPING_SOUND) _index))))))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_closeAll (fn jm_closeAll [this]
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this ((this :f_soundStrings) :f_CLOSE_ALL))
        (var _soundInterfaceArray (:jm_getSoundInterfaceArray (this :f_soundsFactoryInterface)))
        (var _progressCanvas (ProgressCanvasFactory/jm_getInstance))
        (var _player nil)
        (do
            (var _index 0)
            (while (< _index (length _soundInterfaceArray))
                (do
            (if (not (nil? (_soundInterfaceArray _index)))
                (do
                (set _player (JR/className (_soundInterfaceArray _index)))
                (if (not (nil? _player))
                    (do
                    (:jm_close _player)
                    (:jm_addPortion _progressCanvas 100 ((this :f_soundStrings) :f_CLOSING_SOUND) _index))))))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto @{:jm_init jm_init :jm_stopAll jm_stopAll :jm_closeAll jm_closeAll})


