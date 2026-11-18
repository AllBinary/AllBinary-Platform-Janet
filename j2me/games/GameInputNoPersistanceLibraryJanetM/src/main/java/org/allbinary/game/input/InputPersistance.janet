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
(defn- RecordStore/jm_openRecordStore [& args] (JR/call jfile "../../../../javax/microedition/rms/RecordStore" "jm_openRecordStore" args))
(import ../../../../org/allbinary/game/configuration/persistance/BasicPersitance :as BasicPersitance)
(defn- NullRecordComparator/jstatic_NULL_RECORD_COMPARATOR [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/NullRecordComparator" "jstatic_NULL_RECORD_COMPARATOR" args))
(defn- NullRecordFilter/jstatic_NULL_RECORD_FILTER [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/NullRecordFilter" "jstatic_NULL_RECORD_FILTER" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- HashtableUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/util/HashtableUtil" "jm_getInstance" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))

#GameInputNoPersistanceLibrary
# Java class InputPersistance
(var jproto nil)
(var jnew_1 nil)
(var jm_loadAll nil)
(var jm_save nil)

    
(set jnew_1 (fn jnew_1 [_name]
    (var this (table/setproto @{:jclass "InputPersistance" :f_hashtableUtil nil} jproto))
    (put this :f_hashtableUtil (HashtableUtil/jm_getInstance))
        (JR/superInit this (BasicPersitance/jnew_1 _name))
    this))
    
(set jm_loadAll (fn jm_loadAll [this _abeClientInformation]
        (var _recordStore (RecordStore/jm_openRecordStore (:jm_getRecordId this _abeClientInformation) true))
        (var _recordEnum (:jm_enumerateRecords _recordStore (NullRecordFilter/jstatic_NULL_RECORD_FILTER) (NullRecordComparator/jstatic_NULL_RECORD_COMPARATOR) true))
        (var _hashtable nil)
        (var _stringBuffer (StringMaker/jnew_0))
        (var _smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
        (var _id 0)
        (do
            (while (:jm_hasNextElement _recordEnum)
                (do
            (set _id (:jm_nextRecordId _recordEnum))
            (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
            (JR/className (this :f_logUtil))
            (set _hashtable (:jm_createHashtable (StdUtil/jm_getInstance)))
            (JR/className (this :f_valueList))
            (JR/className (this :f_idList)))))
        (:jm_closeRecordStore _recordStore)))
    
(set jm_save (fn jm_save [this _abeClientInformation _hashtable]
        (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((this :f_persistanceStrings) :f_NOT_SAVING)) (:jm_toString_1 (StringUtil/jm_getInstance) _hashtable))) this ((this :f_commonStrings) :f_SAVE))
        (var _recordStore (RecordStore/jm_openRecordStore (:jm_getRecordId this _abeClientInformation) true))
        (var _gameActionInput nil)
        (var _list nil)
        (var _input nil)
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
                (set _input (:jm_get _list _index2)))
                    (do (set _index2 (JR/i32 (+ _index2 1)))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_closeRecordStore _recordStore)))

(set jproto (table/setproto @{:jm_loadAll jm_loadAll :jm_save jm_save} BasicPersitance/jproto))


