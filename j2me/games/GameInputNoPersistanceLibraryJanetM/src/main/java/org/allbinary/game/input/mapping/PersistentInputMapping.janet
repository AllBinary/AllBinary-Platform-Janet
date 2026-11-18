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
(import ../../../../../java/util/Enumeration :as Enumeration)
(defn- GamePersistanceStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/persistance/GamePersistanceStrings" "jm_getInstance" args))
(defn- InputPersistance/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/game/input/InputPersistance" "jnew_1" args))
(defn- InputMappingEvent/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/game/input/mapping/event/InputMappingEvent" "jnew_1" args))
(defn- NullInputMappingEventListener/jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER [& args] (JR/call jfile "../../../../../org/allbinary/game/input/mapping/event/NullInputMappingEventListener" "jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_putOE [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_putOE" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- EnumerationUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/EnumerationUtil" "jm_getInstance" args))
(defn- InputToGameKeyMapping/jnew_0 [& args] (JR/call jfile "./InputToGameKeyMapping" "jnew_0" args))
(defn- InputToGameKeyMapping/jm_getNullInstance [& args] (JR/call jfile "./InputToGameKeyMapping" "jm_getNullInstance" args))

#GameInputNoPersistanceLibrary
# Java class PersistentInputMapping
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_1 nil)
(var jm_getNullInstance nil)
(var jm_getTotalMapped nil)
(var jm_isDefaultNew nil)
(var jm_getDefault nil)
(var jm_setDefault nil)
(var jm_update nil)
(var jm_save nil)
(var jm_init nil)
(var jm_setInputMappingEventListenerInterface nil)
(var jm_getInputMappingEventListenerInterface nil)
(var jm_getInputMapping nil)
(var jm_isDelete nil)
(var jm_isSystemInput nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getNullInstance (fn jm_getNullInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_1 ((GamePersistanceStrings/jm_getInstance) :f_SAVED_INPUT_CONFIGURATION_RECORD_ID)))))
        (return jreturn (jstatic_instance)))))
    
(set jnew_1 (fn jnew_1 [_name]
    (var this (table/setproto @{:jclass "PersistentInputMapping" :f_logUtil nil :f_commonStrings nil :f_enumerationUtil nil :f_inputMapping nil :f_inputMappingEventListenerInterface nil :f_inputPersistance nil :f_inputMappingEvent nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_enumerationUtil (EnumerationUtil/jm_getInstance))
    (put this :f_inputMapping (InputToGameKeyMapping/jnew_0))
    (put this :f_inputMappingEventListenerInterface (NullInputMappingEventListener/jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER))
    
    (put this :f_inputMappingEvent (InputMappingEvent/jnew_1 this))
        (set (this :f_inputPersistance) (InputPersistance/jnew_1 _name))
    this))
    
(set jm_getTotalMapped (fn jm_getTotalMapped [this]
    (label jreturn
        (return jreturn (JR/className (:jm_getHashtable (:jm_getInputMapping this)))))))
    
(set jm_isDefaultNew (fn jm_isDefaultNew [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_getDefault (fn jm_getDefault [this]
    (label jreturn
        (return jreturn (InputToGameKeyMapping/jm_getNullInstance)))))
    
(set jm_setDefault (fn jm_setDefault [this _abeClientInformation]
        (:jm_removeAll (:jm_getInputMapping this))
        (:jm_addMapping (:jm_getInputMapping this) (:jm_getDefault this))
        (:jm_save this _abeClientInformation)))
    
(set jm_update (fn jm_update [this _abeClientInformation]
        (:jm_deleteAll (this :f_inputPersistance) _abeClientInformation)
        (:jm_save this _abeClientInformation)))
    
(set jm_save (fn jm_save [this _abeClientInformation]
        (:jm_save (this :f_inputPersistance) _abeClientInformation (:jm_getHashtable (:jm_getInputMapping this)))
        (:jm_setInputToGameKeyMapping (this :f_inputMappingEvent) (:jm_getInputMapping this))
        (if (not (nil? (:jm_getInputMappingEventListenerInterface this)))
            (do
            (:jm_onInputMappingEvent (:jm_getInputMappingEventListenerInterface this) (this :f_inputMappingEvent))))))
    
(set jm_init (fn jm_init [this _abeClientInformation]
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this ((this :f_commonStrings) :f_INIT))
        (try
            (do
            (:jm_loadAll (this :f_inputPersistance) _abeClientInformation))
            ([_e] (do
            (PreLogUtil/jm_putOE ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_INIT) _e)
            (:jm_deleteRecoreStore (this :f_inputPersistance) _abeClientInformation)
            (:jm_setDefault this _abeClientInformation)
            (:jm_loadAll (this :f_inputPersistance) _abeClientInformation))))
        (var _list (:jm_getList (this :f_inputPersistance)))
        (var _totalMappedTo 0)
        (var _size (:jm_size _list))
        (var _hashtable nil)
        (var _enumeration nil)
        (var _mappedToInput nil)
        (var _gameActionInput nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _hashtable ((_list :f_objectArray) _index))
            (set _enumeration (:jm_keys _hashtable))
            (do
                (while (:jm_hasMoreElements (this :f_enumerationUtil) _enumeration)
                    (do
                (set _mappedToInput (:jm_nextElement (this :f_enumerationUtil) _enumeration))
                (set _gameActionInput (:jm_get _hashtable _mappedToInput))
                (set _totalMappedTo (JR/i32 (+ _totalMappedTo 1)))
                (:jm_add (:jm_getInputMapping this) _gameActionInput _mappedToInput)))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "End - Total Loaded Keys Mapped: ")
        (:jm_appendint _stringBuffer (:jm_getTotalMapped this))
        (:jm_append _stringBuffer " to: ")
        (:jm_appendint _stringBuffer _totalMappedTo)
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this ((this :f_commonStrings) :f_INIT))))
    
(set jm_setInputMappingEventListenerInterface (fn jm_setInputMappingEventListenerInterface [this _inputMappingEventListenerInterface]
        (set (this :f_inputMappingEventListenerInterface) _inputMappingEventListenerInterface)))
    
(set jm_getInputMappingEventListenerInterface (fn jm_getInputMappingEventListenerInterface [this]
    (label jreturn
        (return jreturn (this :f_inputMappingEventListenerInterface)))))
    
(set jm_getInputMapping (fn jm_getInputMapping [this]
    (label jreturn
        (return jreturn (this :f_inputMapping)))))
    
(set jm_isDelete (fn jm_isDelete [this _input]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_isSystemInput (fn jm_isSystemInput [this _input]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))

(set jproto @{:jm_getTotalMapped jm_getTotalMapped :jm_isDefaultNew jm_isDefaultNew :jm_getDefault jm_getDefault :jm_setDefault jm_setDefault :jm_update jm_update :jm_save jm_save :jm_init jm_init :jm_setInputMappingEventListenerInterface jm_setInputMappingEventListenerInterface :jm_getInputMappingEventListenerInterface jm_getInputMappingEventListenerInterface :jm_getInputMapping jm_getInputMapping :jm_isDelete jm_isDelete :jm_isSystemInput jm_isSystemInput})


