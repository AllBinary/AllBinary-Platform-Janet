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
# package org.allbinary.game.input.mapping

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameKeyFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/GameKeyFactory" "jm_getInstance" args))
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/InputFactory" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_putOE [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_putOE" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(import ./InputMapping :as InputMapping)

# Java class InputToGameKeyMapping
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getNullInstance nil)
(var jm_clear nil)
(var jm_removeAll nil)
(var jm_addMapping nil)
(var jm_addAll nil)
(var jm_add nil)
(var jm_remove nil)
(var jm_set nil)
(var jm_getMaxMappable nil)
(var jm_getReverseInstance nil)
(var jm_initGameKey nil)
(var jm_getSmallestCanvasGameKeyCode nil)
(var jm_init nil)
(var jm_getInstanceForCanvas nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getNullInstance (fn jm_getNullInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "InputToGameKeyMapping" :f_gameKeyFactory nil :f_mappedGameKeys nil :f_platformToGameKeyMapping nil :f_negativePlatformToGameKeyMapping nil} jproto))
    (put this :f_gameKeyFactory (GameKeyFactory/jm_getInstance))
    (put this :f_mappedGameKeys @[((this :f_gameKeyFactory) :f_UP) ((this :f_gameKeyFactory) :f_DOWN) ((this :f_gameKeyFactory) :f_LEFT) ((this :f_gameKeyFactory) :f_RIGHT)])
    (put this :f_platformToGameKeyMapping (array/new-filled ((InputFactory/jm_getInstance) :f_MAX) nil))
    (put this :f_negativePlatformToGameKeyMapping (array/new-filled 0 nil))
    (JR/superInit this (InputMapping/jnew_0))
        (JR/className (this :f_logUtil))
        (:jm_clear this)
    this))
    
(set jm_clear (fn jm_clear [this]
        (do
            (var _index (JR/i32 (- (length (this :f_platformToGameKeyMapping)) 1)))
            (while (>= _index 0)
                (do
            (set ((this :f_platformToGameKeyMapping) _index) ((this :f_gameKeyFactory) :f_NONE)))
                (do (set _index (JR/i32 (- _index 1))))))))
    
(set jm_removeAll (fn jm_removeAll [this]
        ((get InputMapping/jproto :jm_removeAll) this)
        (:jm_clear this)))
    
(set jm_addMapping (fn jm_addMapping [this _inputToGameKeyMapping]
        (do
            (var _index (JR/i32 (- (:jm_getMaxMappable _inputToGameKeyMapping) 1)))
            (while (>= _index 0)
                (do
            (var _input (:jm_getInstance _inputToGameKeyMapping _index))
            (if (not= _input ((this :f_gameKeyFactory) :f_NONE))
                (do
                (:jm_addAll this _input (:jm_getMappedInput _inputToGameKeyMapping _input)))))
                (do (set _index (JR/i32 (- _index 1))))))))
    
(set jm_addAll (fn jm_addAll [this _input _list]
        (do
            (var _index (JR/i32 (- (:jm_size _list) 1)))
            (while (>= _index 0)
                (do
            (var _mappedToInput ((_list :f_objectArray) _index))
            (:jm_add this _input _mappedToInput))
                (do (set _index (JR/i32 (- _index 1))))))))
    
(set jm_add (fn jm_add [this _input _mappedToInput]
        ((get InputMapping/jproto :jm_add) this _input _mappedToInput)
        (:jm_set this _input _mappedToInput)))
    
(set jm_remove (fn jm_remove [this _input _mappedToInput]
        (JR/className (this :f_logUtil))
        ((get InputMapping/jproto :jm_remove) this _input _mappedToInput)
        (:jm_set this _input ((this :f_gameKeyFactory) :f_NONE))))
    
(set jm_set (fn jm_set [this _input _mappedToInput]
        (var _id (:jm_getId _mappedToInput))
        (if (and (>= _id 0) (< _id (length (this :f_platformToGameKeyMapping))))
            (do
            (set ((this :f_platformToGameKeyMapping) _id) _input)))))
    
(set jm_getMaxMappable (fn jm_getMaxMappable [this]
    (label jreturn
        (return jreturn (length (this :f_platformToGameKeyMapping))))))
    
(set jm_getReverseInstance (fn jm_getReverseInstance [this _id]
    (label jreturn
        (var _list (BasicArrayListD/jnew_0))
        (var _inputFactory (InputFactory/jm_getInstance))
        (do
            (var _index 0)
            (while (< _index (length (this :f_platformToGameKeyMapping)))
                (do
            (if (= (JR/className ((this :f_platformToGameKeyMapping) _index)) _id)
                (do
                (var _input (:jm_getInstanceById _inputFactory _index))
                (if (not (nil? _input))
                    (do
                    (:jm_add _list _input))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _list))))
    
(set jm_initGameKey (fn jm_initGameKey [this _canvas _gameKey]
        (var _key (:jm_getKeyCode _canvas (:jm_getId _gameKey)))
        (if (and (< _key 0) (< (JR/i32 (- _key)) (length (this :f_negativePlatformToGameKeyMapping))))
            (do
            (set ((this :f_negativePlatformToGameKeyMapping) (JR/i32 (- _key))) _gameKey))
            (if (> _key 0)
            (do
            (if (= ((this :f_platformToGameKeyMapping) _key) ((this :f_gameKeyFactory) :f_NONE))
                (do
                (set ((this :f_platformToGameKeyMapping) _key) _gameKey))))
            (do
            (PreLogUtil/jm_putOE (:jm_toString (:jm_appendint (:jm_append (:jm_append (StringMaker/jnew_0) (:jm_toString _gameKey)) ((CommonSeps/jm_getInstance) :f_COLON_SEP)) _key)) this ((this :f_commonStrings) :f_INIT) (JR/newException "Exception")))))))
    
(set jm_getSmallestCanvasGameKeyCode (fn jm_getSmallestCanvasGameKeyCode [this _canvas]
    (label jreturn
        (var _nextKey 0)
        (var _smallestKey 0)
        (do
            (var _index (length (this :f_mappedGameKeys)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set _nextKey (:jm_getKeyCode _canvas (JR/className ((this :f_mappedGameKeys) _index))))
            (if (< _nextKey _smallestKey)
                (do
                (set _smallestKey _nextKey))))))
        (return jreturn _smallestKey))))
    
(set jm_init (fn jm_init [this _canvas]
        (try
            (do
            (var _negativePlatformToGameKeyMapping (array/new-filled 0 nil))
            (var _smallestKey (:jm_getSmallestCanvasGameKeyCode this _canvas))
            (if (< _smallestKey 0)
                (do
                (set _smallestKey (JR/i32 (- _smallestKey 1)))
                (if (< _smallestKey (JR/i32 (- 256)))
                    (do
                    (set _smallestKey (JR/i32 (- 256)))))
                (set _negativePlatformToGameKeyMapping (array/new-filled (JR/i32 (- _smallestKey)) nil))
                (do
                    (var _index (length _negativePlatformToGameKeyMapping))
                    (while (>= (set _index (JR/i32 (- _index 1))) 0)
                        (do
                    (set (_negativePlatformToGameKeyMapping _index) ((this :f_gameKeyFactory) :f_NONE)))))
                (set (this :f_negativePlatformToGameKeyMapping) _negativePlatformToGameKeyMapping)))
            (do
                (var _index (length (this :f_mappedGameKeys)))
                (while (>= (set _index (JR/i32 (- _index 1))) 0)
                    (do
                (:jm_initGameKey this _canvas ((this :f_mappedGameKeys) _index))))))
            ([_t] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_getInstanceForCanvas (fn jm_getInstanceForCanvas [this _canvas _id]
    (label jreturn
        (if (and (>= _id 0) (< _id (length (this :f_platformToGameKeyMapping))))
            (do
            (return jreturn ((this :f_platformToGameKeyMapping) _id)))
            (if (and (< _id 0) (< (JR/i32 (- _id)) (length (this :f_negativePlatformToGameKeyMapping))))
            (do
            (return jreturn ((this :f_negativePlatformToGameKeyMapping) (JR/i32 (- _id)))))
            (do
            (return jreturn ((this :f_gameKeyFactory) :f_NONE))))))))
    
(set jm_getInstance (fn jm_getInstance [this _id]
    (label jreturn
        (if (and (>= _id 0) (< _id (length (this :f_platformToGameKeyMapping))))
            (do
            (return jreturn ((this :f_platformToGameKeyMapping) _id)))
            (if (and (< _id 0) (< (JR/i32 (- _id)) (length (this :f_negativePlatformToGameKeyMapping))))
            (do
            (return jreturn ((this :f_negativePlatformToGameKeyMapping) (JR/i32 (- _id)))))
            (do
            (return jreturn ((this :f_gameKeyFactory) :f_NONE))))))))

(set jproto (table/setproto @{:jm_clear jm_clear :jm_removeAll jm_removeAll :jm_addMapping jm_addMapping :jm_addAll jm_addAll :jm_add jm_add :jm_remove jm_remove :jm_set jm_set :jm_getMaxMappable jm_getMaxMappable :jm_getReverseInstance jm_getReverseInstance :jm_initGameKey jm_initGameKey :jm_getSmallestCanvasGameKeyCode jm_getSmallestCanvasGameKeyCode :jm_init jm_init :jm_getInstanceForCanvas jm_getInstanceForCanvas :jm_getInstance jm_getInstance} InputMapping/jproto))


