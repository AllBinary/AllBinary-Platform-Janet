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
# package org.allbinary.game.configuration.persistance

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../java/io/ByteArrayInputStream :as ByteArrayInputStream)
(import ../../../../../java/io/ByteArrayOutputStream :as ByteArrayOutputStream)
(import ../../../../../java/io/DataInputStream :as DataInputStream)
(import ../../../../../java/io/DataOutputStream :as DataOutputStream)
(defn- RecordStore/jm_openRecordStore [& args] (JR/call jfile "../../../../../javax/microedition/rms/RecordStore" "jm_openRecordStore" args))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- ABHashtable/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/ABHashtable" "jnew_0" args))
(defn- HashtableUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/HashtableUtil" "jm_getInstance" args))
(import ./BasicPersitance :as BasicPersitance)
(defn- NullRecordStore/jstatic_NULL_RECORD_STORE [& args] (JR/call jfile "./NullRecordStore" "jstatic_NULL_RECORD_STORE" args))
(defn- NullRecordFilter/jstatic_NULL_RECORD_FILTER [& args] (JR/call jfile "./NullRecordFilter" "jstatic_NULL_RECORD_FILTER" args))
(defn- NullRecordComparator/jstatic_NULL_RECORD_COMPARATOR [& args] (JR/call jfile "./NullRecordComparator" "jstatic_NULL_RECORD_COMPARATOR" args))

# Java class KeyValuePersistance
(var jproto nil)
(var jnew_1 nil)
(var jm_loadAll nil)
(var jm_loadAllSize nil)
(var jm_save nil)
(var jm_get nil)

    
(set jnew_1 (fn jnew_1 [_recordId]
    (var this (table/setproto @{:jclass "KeyValuePersistance" :f_tsUtil nil} jproto))
    (put this :f_tsUtil (TsUtil/jm_getInstance))
        (JR/superInit this (BasicPersitance/jnew_1 _recordId))
    this))
    
(set jm_loadAll (fn jm_loadAll [this _abeClientInformation]
        (:jm_loadAllSize this _abeClientInformation 1)))
    
(set jm_loadAllSize (fn jm_loadAllSize [this _abeClientInformation _size]
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
            (var _hashtable nil)
            (var _name nil)
            (var _value nil)
            (var _smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
            (var _stringBuffer (StringMaker/jnew_0))
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
                    (set _hashtable (ABHashtable/jnew_0))
                    (do
                        (var _index 0)
                        (while (< _index _size)
                            (do
                        (set _name (:jm_readUTF _inputStream))
                        (:jm_readUTF _inputStream)
                        (set _value (:jm_readUTF _inputStream))
                        (:jm_put _hashtable _name _value))
                            (do (set _index (JR/i32 (+ _index 1))))))
                    (JR/className (this :f_valueList))
                    (JR/className (this :f_idList))))))))
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
            (JR/className (this :f_logUtil))
            (set _recordStore (RecordStore/jm_openRecordStore (:jm_getRecordId this _abeClientInformation) true))
            (var _byteArrayOutputStream (ByteArrayOutputStream/jnew_0))
            (var _outputStream (DataOutputStream/jnew_1 _byteArrayOutputStream))
            (var _value nil)
            (var _commonSeps (CommonSeps/jm_getInstance))
            (var _objectArray (:jm_getKeysAsArray (HashtableUtil/jm_getInstance) _hashtable))
            (var _anyType nil)
            (var _size (length _objectArray))
            (do
                (var _index 0)
                (while (< _index _size)
                    (do
                (:jm_writeUTF _outputStream (_objectArray _index))
                (:jm_writeUTF _outputStream (_commonSeps :f_EQUALS))
                (set _anyType (_objectArray _index))
                (set _value (:jm_get _hashtable _anyType))
                (:jm_writeUTF _outputStream _value))
                    (do (set _index (JR/i32 (+ _index 1))))))
            (var _tsUtil (TsUtil/jm_getInstance))
            (var _savedGameBytes (:jm_getByteArray _tsUtil (:jm_toString _byteArrayOutputStream)))
            (:jm_addRecord _recordStore _savedGameBytes 0 (length _savedGameBytes)))
            ([_e] (do
            (error _e)))))))
    
(set jm_get (fn jm_get [this _index]
    (label jreturn
        (var _hashtable (((this :f_valueList) :f_objectArray) _index))
        (return jreturn _hashtable))))

(set jproto (table/setproto @{:jm_loadAll jm_loadAll :jm_loadAllSize jm_loadAllSize :jm_save jm_save :jm_get jm_get} BasicPersitance/jproto))


