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
(defn- RecordStore/jm_deleteRecordStore [& args] (JR/call jfile "../../../../../javax/microedition/rms/RecordStore" "jm_deleteRecordStore" args))
(defn- RecordStore/jm_openRecordStore [& args] (JR/call jfile "../../../../../javax/microedition/rms/RecordStore" "jm_openRecordStore" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- PlatformRecordIdUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/persistance/PlatformRecordIdUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(import ../../../../../java/lang/Integer :as Integer)
(defn- PersistanceStrings/jm_getInstance [& args] (JR/call jfile "./PersistanceStrings" "jm_getInstance" args))
(defn- NullRecordStore/jstatic_NULL_RECORD_STORE [& args] (JR/call jfile "./NullRecordStore" "jstatic_NULL_RECORD_STORE" args))

# Java class BasicPersitance
(var jproto nil)
(var jnew_1 nil)
(var jm_deleteRecoreStore nil)
(var jm_deleteAll nil)
(var jm_delete nil)
(var jm_getRecordId nil)
(var jm_getList nil)
(var jm_getIds nil)
(var jm_clear nil)

    
(set jnew_1 (fn jnew_1 [_recordId]
    (var this (table/setproto @{:jclass "BasicPersitance" :f_logUtil nil :f_commonStrings nil :f_persistanceStrings nil :f_platformRecordIdUtil nil :f_recordId nil :f_valueList nil :f_idList nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_persistanceStrings (PersistanceStrings/jm_getInstance))
    (put this :f_platformRecordIdUtil (PlatformRecordIdUtil/jm_getInstance))
    
    (put this :f_valueList (BasicArrayListD/jnew_0))
    (put this :f_idList (BasicArrayListD/jnew_0))
        (set (this :f_recordId) _recordId)
    this))
    
(set jm_deleteRecoreStore (fn jm_deleteRecoreStore [this _abeClientInformation]
        (RecordStore/jm_deleteRecordStore (:jm_getRecordId this _abeClientInformation))))
    
(set jm_deleteAll (fn jm_deleteAll [this _abeClientInformation]
        (var _size (:jm_size (this :f_idList)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _integer (((this :f_idList) :f_objectArray) _index))
            (:jm_delete this _abeClientInformation (:jm_intValue _integer)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_clear this)))
    
(set jm_delete (fn jm_delete [this _abeClientInformation _deleteId]
        (var _recordStore (NullRecordStore/jstatic_NULL_RECORD_STORE))
        (defer (do
            (if (not (nil? _recordStore))
                (do
                (PreLogUtil/jm_put ((this :f_persistanceStrings) :f_CLOSING_RECORDSTORE) this ((this :f_commonStrings) :f_delete))
                (:jm_closeRecordStore _recordStore))))
            (try
            (do
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) ((this :f_persistanceStrings) :f_DELETING_WITH_ID)) _deleteId)) this ((this :f_commonStrings) :f_delete))
            (set _recordStore (RecordStore/jm_openRecordStore (:jm_getRecordId this _abeClientInformation) true))
            (:jm_deleteRecord _recordStore _deleteId))
            ([_e] (do
            (error _e)))))))
    
(set jm_getRecordId (fn jm_getRecordId [this _abeClientInformation]
    (label jreturn
        (return jreturn (:jm_getRecordId (this :f_platformRecordIdUtil) _abeClientInformation (this :f_recordId))))))
    
(set jm_getList (fn jm_getList [this]
    (label jreturn
        (return jreturn (this :f_valueList)))))
    
(set jm_getIds (fn jm_getIds [this]
    (label jreturn
        (return jreturn (this :f_idList)))))
    
(set jm_clear (fn jm_clear [this]
        (:jm_clear (this :f_valueList))
        (:jm_clear (this :f_idList))))

(set jproto @{:jm_deleteRecoreStore jm_deleteRecoreStore :jm_deleteAll jm_deleteAll :jm_delete jm_delete :jm_getRecordId jm_getRecordId :jm_getList jm_getList :jm_getIds jm_getIds :jm_clear jm_clear})


