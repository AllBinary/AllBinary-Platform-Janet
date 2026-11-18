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
# package org.allbinary.game.score

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/io/ByteArrayInputStream :as ByteArrayInputStream)
(import ../../../../java/io/ByteArrayOutputStream :as ByteArrayOutputStream)
(import ../../../../java/io/DataInputStream :as DataInputStream)
(import ../../../../java/io/DataOutputStream :as DataOutputStream)
(defn- RecordStore/jm_openRecordStore [& args] (JR/call jfile "../../../../javax/microedition/rms/RecordStore" "jm_openRecordStore" args))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- NullRecordComparator/jstatic_NULL_RECORD_COMPARATOR [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/NullRecordComparator" "jstatic_NULL_RECORD_COMPARATOR" args))
(defn- NullRecordFilter/jstatic_NULL_RECORD_FILTER [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/NullRecordFilter" "jstatic_NULL_RECORD_FILTER" args))
(defn- NullRecordStore/jstatic_NULL_RECORD_STORE [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/NullRecordStore" "jstatic_NULL_RECORD_STORE" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- ExceptionUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/java/exception/ExceptionUtil" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- PlatformRecordIdUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/persistance/PlatformRecordIdUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(import ../../../../java/lang/Integer :as Integer)

# Java class HighScoreNamePersistanceSingleton
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_clear nil)
(var jm_deleteAll nil)
(var jm_getRecordId nil)
(var jm_delete nil)
(var jm_getIds nil)
(var jm_load nil)
(var jm_save nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HighScoreNamePersistanceSingleton" :f_logUtil nil :f_tsUtil nil :f_commonStrings nil :f_platformRecordIdUtil nil :f_RECORD_ID nil :f_name nil :f_nameBasicArrayList nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_tsUtil (TsUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_platformRecordIdUtil (PlatformRecordIdUtil/jm_getInstance))
    (put this :f_RECORD_ID "_SN")
    (put this :f_name ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_nameBasicArrayList (BasicArrayListD/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jm_clear (fn jm_clear [this]
        (set (this :f_name) ((StringUtil/jm_getInstance) :f_EMPTY_STRING))))
    
(set jm_deleteAll (fn jm_deleteAll [this _abeClientInformation _gameInfo]
        (var _size (:jm_size (this :f_nameBasicArrayList)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _integer (((this :f_nameBasicArrayList) :f_objectArray) _index))
            (:jm_delete this _abeClientInformation _gameInfo (:jm_intValue _integer)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_clear this)))
    
(set jm_getRecordId (fn jm_getRecordId [this _abeClientInformation]
    (label jreturn
        (return jreturn (:jm_getRecordId (this :f_platformRecordIdUtil) _abeClientInformation (this :f_RECORD_ID))))))
    
(set jm_delete (fn jm_delete [this _abeClientInformation _gameInfo _deleteId]
        (var _recordStore (NullRecordStore/jstatic_NULL_RECORD_STORE))
        (defer (do
            (if (not (nil? _recordStore))
                (do
                (PreLogUtil/jm_put "Closing RecordStore" this ((this :f_commonStrings) :f_delete))
                (:jm_closeRecordStore _recordStore))))
            (try
            (do
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) "Deleting: ") _deleteId)) this ((this :f_commonStrings) :f_delete))
            (set _recordStore (RecordStore/jm_openRecordStore (:jm_getRecordId this _abeClientInformation) true))
            (:jm_deleteRecord _recordStore _deleteId))
            ([_e] (do
            (error _e)))))))
    
(set jm_getIds (fn jm_getIds [this]
    (label jreturn
        (return jreturn (this :f_nameBasicArrayList)))))
    
(set jm_load (fn jm_load [this _abeClientInformation _gameInfo]
    (label jreturn
        (var _recordStore (NullRecordStore/jstatic_NULL_RECORD_STORE))
        (defer (do
            (try
                (do
                (if (not (nil? _recordStore))
                    (do
                    (PreLogUtil/jm_put "Closing RecordStore" this ((this :f_commonStrings) :f_LOAD))
                    (:jm_closeRecordStore _recordStore))))
                ([_e] (do
                (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_LOAD) _e)))))
            (try
            (do
            (if (= (this :f_name) ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
                (do
                (var _LOADING_ID "Loading id: ")
                (set _recordStore (RecordStore/jm_openRecordStore (:jm_getRecordId this _abeClientInformation) true))
                (var _recordEnum (:jm_enumerateRecords _recordStore (NullRecordFilter/jstatic_NULL_RECORD_FILTER) (NullRecordComparator/jstatic_NULL_RECORD_COMPARATOR) true))
                (var _smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
                (var _recordAsBytes nil)
                (var _byteArrayInputStream nil)
                (var _inputStream nil)
                (do
                    (while (:jm_hasNextElement _recordEnum)
                        (do
                    (var _id (:jm_nextRecordId _recordEnum))
                    (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) _LOADING_ID) _id)) this ((this :f_commonStrings) :f_LOAD))
                    (set _recordAsBytes (:jm_getRecord (this :f_tsUtil) _recordStore _id))
                    (set _byteArrayInputStream (ByteArrayInputStream/jnew_1 _recordAsBytes))
                    (set _inputStream (DataInputStream/jnew_1 _byteArrayInputStream))
                    (do
                        (while (> (:jm_available _inputStream) 0)
                            (do
                        (set (this :f_name) (:jm_readUTF _inputStream)))))
                    (:jm_add (this :f_nameBasicArrayList) (:jm_getAt _smallIntegerSingletonFactory _id))))))))
            ([_e] (do
            (:jm_save this _abeClientInformation _gameInfo (this :f_name))
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((this :f_commonStrings) :f_EXCEPTION_LABEL)) (:jm_getStackTrace (ExceptionUtil/jm_getInstance) _e))) this ((this :f_commonStrings) :f_LOAD))))))
        (return jreturn (this :f_name)))))
    
(set jm_save (fn jm_save [this _abeClientInformation _gameInfo _name]
        (var _recordStore (NullRecordStore/jstatic_NULL_RECORD_STORE))
        (defer (do
            (try
                (do
                (if (not (nil? _recordStore))
                    (do
                    (PreLogUtil/jm_put "Closing RecordStore" this ((this :f_commonStrings) :f_SAVE))
                    (:jm_closeRecordStore _recordStore))))
                ([_e] (do
                (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_SAVE) _e)))))
            (try
            (do
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Saving: ") _name)) this ((this :f_commonStrings) :f_SAVE))
            (set _recordStore (RecordStore/jm_openRecordStore (:jm_getRecordId this _abeClientInformation) true))
            (var _byteArrayOutputStream (ByteArrayOutputStream/jnew_0))
            (var _outputStream (DataOutputStream/jnew_1 _byteArrayOutputStream))
            (:jm_writeUTF _outputStream _name)
            (var _savedGameBytes (:jm_toByteArray _byteArrayOutputStream))
            (:jm_addRecord _recordStore _savedGameBytes 0 (length _savedGameBytes))
            (set (this :f_name) _name))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_SAVE) _e)))))))

(set jproto @{:jm_clear jm_clear :jm_deleteAll jm_deleteAll :jm_getRecordId jm_getRecordId :jm_delete jm_delete :jm_getIds jm_getIds :jm_load jm_load :jm_save jm_save})


