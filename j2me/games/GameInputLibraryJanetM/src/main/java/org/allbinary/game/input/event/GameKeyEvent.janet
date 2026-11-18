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
# package org.allbinary.game.input.event

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(import ../../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)

# Java class GameKeyEvent
(var jproto nil)
(var jcell_NONE :jnone)
(var jstatic_NONE nil)
(var jsetstatic_NONE nil)
(var jnew_6 nil)
(var jm_createEvent nil)
(var jm_init nil)
(var jm_setRepeatEvents nil)
(var jm_hasRepeatEvents nil)
(var jm_getKey nil)
(var jm_toString nil)
(var jm_getOriginalKey nil)
(var jm_setOriginalKey nil)
(var jm_getGameActionKey nil)
(var jm_setGameActionKey nil)
(var jm_getSourceId nil)

(set jstatic_NONE (fn jstatic_NONE []
  (when (= jcell_NONE :jnone) (set jcell_NONE (jnew_6 ((NullUtil/jm_getInstance) :f_NULL_OBJECT) (JR/i32 (- 1)) (JR/i32 (- 1)) (JR/i32 (- 1)) (JR/i32 (- 1)) false)))
  jcell_NONE))
(set jsetstatic_NONE (fn jsetstatic_NONE [value] (set jcell_NONE value)))

    
(set jm_createEvent (fn jm_createEvent [_anyType _sourceId _key]
    (label jreturn
        (return jreturn (jnew_6 _anyType _sourceId 0 0 _key false)))))
    
(set jnew_6 (fn jnew_6 [_anyType _sourceId _originalKey _gameActionKey _key _repeated]
    (var this (table/setproto @{:jclass "GameKeyEvent" :f_sourceId 0 :f_repeated false :f_key 0 :f_gameActionKey 0 :f_originalKey 0} jproto))
    
    
    
    
    
        (JR/superInit this (AllBinaryEventObject/jnew_1 _anyType))
        (set (this :f_sourceId) _sourceId)
        (:jm_setOriginalKey this _originalKey)
        (set (this :f_key) _key)
        (:jm_setGameActionKey this _gameActionKey)
        (:jm_setRepeatEvents this _repeated)
    this))
    
(set jm_init (fn jm_init [this _anyType]
        (:jm_setSource this _anyType)))
    
(set jm_setRepeatEvents (fn jm_setRepeatEvents [this _repeated]
        (set (this :f_repeated) _repeated)))
    
(set jm_hasRepeatEvents (fn jm_hasRepeatEvents [this]
    (label jreturn
        (return jreturn (this :f_repeated)))))
    
(set jm_getKey (fn jm_getKey [this]
    (label jreturn
        (return jreturn (this :f_key)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "\nKey: ")
        (:jm_appendint _stringBuffer (:jm_getKey this))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_getOriginalKey (fn jm_getOriginalKey [this]
    (label jreturn
        (return jreturn (this :f_originalKey)))))
    
(set jm_setOriginalKey (fn jm_setOriginalKey [this _originalKey]
        (set (this :f_originalKey) _originalKey)))
    
(set jm_getGameActionKey (fn jm_getGameActionKey [this]
    (label jreturn
        (return jreturn (this :f_gameActionKey)))))
    
(set jm_setGameActionKey (fn jm_setGameActionKey [this _gameActionKey]
        (set (this :f_gameActionKey) _gameActionKey)))
    
(set jm_getSourceId (fn jm_getSourceId [this]
    (label jreturn
        (return jreturn (this :f_sourceId)))))

(set jproto (table/setproto @{:jm_init jm_init :jm_setRepeatEvents jm_setRepeatEvents :jm_hasRepeatEvents jm_hasRepeatEvents :jm_getKey jm_getKey :jm_toString jm_toString :jm_getOriginalKey jm_getOriginalKey :jm_setOriginalKey jm_setOriginalKey :jm_getGameActionKey jm_getGameActionKey :jm_setGameActionKey jm_setGameActionKey :jm_getSourceId jm_getSourceId} AllBinaryEventObject/jproto))


