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
# package org.allbinary.game.paint.help

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameKeyFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/GameKeyFactory" "jm_getInstance" args))
(defn- PlatformInputMappingFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/PlatformInputMappingFactory" "jm_getInstance" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(import ./HelpPaintable :as HelpPaintable)

# Java class BasicInputMappingHelpPaintable
(var jproto nil)
(var jnew_2 nil)
(var jm_update nil)
(var jm_get nil)

    
(set jnew_2 (fn jnew_2 [_gameInputMappingArray _basicColor]
    (var this (table/setproto @{:jclass "BasicInputMappingHelpPaintable" :f_gameInputMappingArray nil :f_NONE nil} jproto))
    
    (put this :f_NONE ((GameKeyFactory/jm_getInstance) :f_NONE))
        (JR/superInit this (HelpPaintable/jnew_3 "Help Screen" ((BasicColorFactory/jm_getInstance) :f_BLACK) _basicColor))
        (set (this :f_gameInputMappingArray) _gameInputMappingArray)
        (:jm_update this (this :f_NONE) (this :f_NONE))
    this))
    
(set jm_update (fn jm_update [this _selectedGameKey _selectedInput]
        (var _gameKeyMapping (:jm_getPersistentInputMappingInstance (PlatformInputMappingFactory/jm_getInstance)))
        (var _EQUAL " = ")
        (var _stringMaker (StringMaker/jnew_0))
        (var _size (length (this :f_gameInputMappingArray)))
        (var _keyInfo (array/new-filled _size nil))
        (var _gameInputMapping nil)
        (var _gameKey nil)
        (var _list nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _gameInputMapping ((this :f_gameInputMappingArray) _index))
            (set _gameKey (:jm_getGameKey _gameInputMapping))
            (set _list (JR/className (:jm_getInputMapping _gameKeyMapping)))
            (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
            (set (_keyInfo _index) (:jm_toString (:jm_append (:jm_append (:jm_append _stringMaker (:jm_getName _gameInputMapping)) _EQUAL) (:jm_get this _list)))))
                (do (set _index (JR/i32 (+ _index 1))))))
        ((get HelpPaintable/jproto :jm_setInputInfoP) this _keyInfo)))
    
(set jm_get (fn jm_get [this _keyList]
    (label jreturn
        (var _commonSeps (CommonSeps/jm_getInstance))
        (var _stringBuffer (StringMaker/jnew_0))
        (var _AND "and ")
        (var _key nil)
        (var _size (:jm_size _keyList))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _key ((_keyList :f_objectArray) _index))
            (:jm_append _stringBuffer (:jm_getName _key))
            (if (< (JR/i32 (+ _index 1)) (:jm_size _keyList))
                (do
                (if (= (:jm_size _keyList) 2)
                    (do
                    (:jm_append (:jm_append _stringBuffer (_commonSeps :f_SPACE)) _AND))
                    (do
                    (if (= (JR/i32 (+ _index 2)) (:jm_size _keyList))
                        (do
                        (:jm_append _stringBuffer (_commonSeps :f_COMMA_SEP))
                        (:jm_append _stringBuffer _AND))
                        (do
                        (:jm_append _stringBuffer (_commonSeps :f_COMMA_SEP)))))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto (table/setproto @{:jm_update jm_update :jm_get jm_get} HelpPaintable/jproto))


