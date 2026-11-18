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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/io/ByteArrayInputStream :as ByteArrayInputStream)
(import ../../../../java/io/ByteArrayOutputStream :as ByteArrayOutputStream)
(import ../../../../java/io/DataInputStream :as DataInputStream)
(import ../../../../java/io/DataOutputStream :as DataOutputStream)
(defn- RecordStore/jm_openRecordStore [& args] (JR/call jfile "../../../../javax/microedition/rms/RecordStore" "jm_openRecordStore" args))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(import ../../../../org/allbinary/game/configuration/persistance/BasicPersitance :as BasicPersitance)
(defn- NullRecordComparator/jstatic_NULL_RECORD_COMPARATOR [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/NullRecordComparator" "jstatic_NULL_RECORD_COMPARATOR" args))
(defn- NullRecordFilter/jstatic_NULL_RECORD_FILTER [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/NullRecordFilter" "jstatic_NULL_RECORD_FILTER" args))
(defn- NullRecordStore/jstatic_NULL_RECORD_STORE [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/NullRecordStore" "jstatic_NULL_RECORD_STORE" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- HashtableUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/util/HashtableUtil" "jm_getInstance" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)
(defn- GameKeyMappingFactory/jm_getInstance [& args] (JR/call jfile "./GameKeyMappingFactory" "jm_getInstance" args))
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "./InputFactory" "jm_getInstance" args))

#GameInputPersistanceLibrary
# Java class InputPersistance
(var jproto nil)
(var jnew_1 nil)
(var jm_loadAll nil)
(var jm_save nil)

    
(set jnew_1 (fn jnew_1 [_name]
    (var this (table/setproto @{:jclass "InputPersistance" :f_tsUtil nil :f_hashtableUtil nil} jproto))
    (put this :f_tsUtil (TsUtil/jm_getInstance))
    (put this :f_hashtableUtil (HashtableUtil/jm_getInstance))
        (JR/superInit this (BasicPersitance/jnew_1 _name))
    this))
    
(set jm_loadAll (fn jm_loadAll [this _abeClientInformation]
        (var _recordStore (NullRecordStore/jstatic_NULL_RECORD_STORE))
        (defer (do
            (if (not (nil? _recordStore))
                (do
                (PreLogUtil/jm_put ((this :f_persistanceStrings) :f_CLOSING_RECORDSTORE) this ((this :f_persistanceStrings) :f_LOAD_ALL))
                (:jm_closeRecordStore _recordStore))))
            (try
            (do
            (set _recordStore (RecordStore/jm_openRecordStore (:jm_getRecordId this _abeClientInformation) true))
            (var _recordEnum (:jm_enumerateRecords _recordStore (NullRecordFilter/jstatic_NULL_RECORD_FILTER) (NullRecordComparator/jstatic_NULL_RECORD_COMPARATOR) true))
            (var _gameActionInputId 0)
            (var _inputId 0)
            (var _gameActionInput nil)
            (var _input nil)
            (var _hashtable nil)
            (var _gameKeyFactory (GameKeyMappingFactory/jm_getInstance))
            (var _stringBuffer (StringMaker/jnew_0))
            (var _inputFactory (InputFactory/jm_getInstance))
            (var _smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
            (var _stdUtil (StdUtil/jm_getInstance))
            (var _recordAsBytes nil)
            (var _byteArrayInputStream nil)
            (var _inputStream nil)
            (do
                (while (:jm_hasNextElement _recordEnum)
                    (do
                (var _id (:jm_nextRecordId _recordEnum))
                (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
                (JR/className (this :f_logUtil))
                (set _recordAsBytes (:jm_getRecord (this :f_tsUtil) _recordStore _id))
                (if (not (nil? _recordAsBytes))
                    (do
                    (set _byteArrayInputStream (ByteArrayInputStream/jnew_1 _recordAsBytes))
                    (set _inputStream (DataInputStream/jnew_1 _byteArrayInputStream))
                    (set _hashtable (:jm_createHashtable _stdUtil))
                    (var _value 0)
                    (do
                        (while (> (:jm_available _inputStream) 0)
                            (do
                        (var _gameActionInputIdAsString (:jm_readUTF _inputStream))
                        (set _value (Integer/jm_parseInt _gameActionInputIdAsString))
                        (set _gameActionInputId _value)
                        (:jm_readUTF _inputStream)
                        (set _value (Integer/jm_parseInt (:jm_readUTF _inputStream)))
                        (set _inputId _value)
                        (set _gameActionInput (:jm_getGameKey _gameKeyFactory (JR/i32 _gameActionInputId)))
                        (set _input (:jm_getInstanceById _inputFactory (JR/i32 _inputId)))
                        (if (or (= _input (_inputFactory :f_NO_INPUT)) (nil? _gameActionInput))
                            (do
                            (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
                            (if (= _input (_inputFactory :f_NO_INPUT))
                                (do
                                (:jm_append _stringBuffer ((this :f_persistanceStrings) :f_ERROR_LOADING_ID))
                                (:jm_appendlong _stringBuffer _inputId)
                                (:jm_append _stringBuffer ((this :f_persistanceStrings) :f_GAME_ACTION_INPUT))
                                (:jm_appendlong _stringBuffer _gameActionInputId)
                                (PreLogUtil/jm_put (:jm_toString _stringBuffer) this ((this :f_persistanceStrings) :f_LOAD_ALL))))
                            (if (nil? _gameActionInput)
                                (do
                                (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
                                (:jm_append _stringBuffer ((this :f_persistanceStrings) :f_ERROR_LOADING))
                                (:jm_appendlong _stringBuffer _gameActionInputId)
                                (:jm_append _stringBuffer ((this :f_persistanceStrings) :f_ID))
                                (:jm_appendlong _stringBuffer _inputId)
                                (PreLogUtil/jm_put (:jm_toString _stringBuffer) this ((this :f_persistanceStrings) :f_LOAD_ALL)))))
                            (do
                            nil))
                        (:jm_put _hashtable _input _gameActionInput))))
                    (JR/className (this :f_valueList))
                    (JR/className (this :f_idList)))
                    (do
                    nil))))))
            ([_e] (do
            (error _e)))))))
    
(set jm_save (fn jm_save [this _abeClientInformation _hashtable]
        (var _recordStore (NullRecordStore/jstatic_NULL_RECORD_STORE))
        (defer (do
            (if (not (nil? _recordStore))
                (do
                (PreLogUtil/jm_put ((this :f_persistanceStrings) :f_CLOSING_RECORDSTORE) this ((this :f_commonStrings) :f_SAVE))
                (:jm_closeRecordStore _recordStore))))
            (try
            (do
            (var _stringBuffer (StringMaker/jnew_0))
            (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append _stringBuffer ((this :f_persistanceStrings) :f_SAVING)) (:jm_toString_1 (StringUtil/jm_getInstance) _hashtable))) this ((this :f_commonStrings) :f_SAVE))
            (set _recordStore (RecordStore/jm_openRecordStore (:jm_getRecordId this _abeClientInformation) true))
            (var _byteArrayOutputStream (ByteArrayOutputStream/jnew_0))
            (var _outputStream (DataOutputStream/jnew_1 _byteArrayOutputStream))
            (var _gameActionInput nil)
            (var _list nil)
            (var _input nil)
            (var _savedGameBytes nil)
            (var _commonSeps (CommonSeps/jm_getInstance))
            (var _smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
            (var _inputObjectArray (:jm_getKeysAsArray (this :f_hashtableUtil) _hashtable))
            (var _size (length _inputObjectArray))
            (do
                (var _index 0)
                (while (< _index _size)
                    (do
                (set _gameActionInput (_inputObjectArray _index))
                (set _list (:jm_get _hashtable (_inputObjectArray _index)))
                (do
                    (var _index2 0)
                    (while (< _index2 (:jm_size _list))
                        (do
                    (var _gameActionInputIdAsString (JR/toString (:jm_getAt _smallIntegerSingletonFactory (:jm_getId _gameActionInput))))
                    (:jm_writeUTF _outputStream _gameActionInputIdAsString)
                    (:jm_writeUTF _outputStream (_commonSeps :f_EQUALS))
                    (set _input ((_list :f_objectArray) _index2))
                    (var _inputIdAsString (JR/toString (:jm_getAt _smallIntegerSingletonFactory (:jm_getId _input))))
                    (:jm_writeUTF _outputStream _inputIdAsString))
                        (do (set _index2 (JR/i32 (+ _index2 1)))))))
                    (do (set _index (JR/i32 (+ _index 1))))))
            (set _savedGameBytes (:jm_toByteArray _byteArrayOutputStream))
            (:jm_addRecord _recordStore _savedGameBytes 0 (length _savedGameBytes)))
            ([_e] (do
            (error _e)))))))

(set jproto (table/setproto @{:jm_loadAll jm_loadAll :jm_save jm_save} BasicPersitance/jproto))


