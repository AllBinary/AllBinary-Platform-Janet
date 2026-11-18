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
(import ../../../../java/io/DataInputStream :as DataInputStream)
(import ../../../../java/io/EOFException :as EOFException)
(import ../../../../java/io/IOException :as IOException)
(defn- RecordComparator/jstatic_PRECEDES [& args] (JR/call jfile "../../../../javax/microedition/rms/RecordComparator" "jstatic_PRECEDES" args))
(defn- RecordComparator/jstatic_FOLLOWS [& args] (JR/call jfile "../../../../javax/microedition/rms/RecordComparator" "jstatic_FOLLOWS" args))
(defn- RecordStore/jm_openRecordStore [& args] (JR/call jfile "../../../../javax/microedition/rms/RecordStore" "jm_openRecordStore" args))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- GameInfo/jstatic_NONE [& args] (JR/call jfile "../../../../org/allbinary/game/GameInfo" "jstatic_NONE" args))
(defn- NullRecordComparator/jstatic_NULL_RECORD_COMPARATOR [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/NullRecordComparator" "jstatic_NULL_RECORD_COMPARATOR" args))
(defn- NullRecordFilter/jstatic_NULL_RECORD_FILTER [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/NullRecordFilter" "jstatic_NULL_RECORD_FILTER" args))
(defn- NullRecordStore/jstatic_NULL_RECORD_STORE [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/NullRecordStore" "jstatic_NULL_RECORD_STORE" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- PlatformRecordIdUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/persistance/PlatformRecordIdUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(import ./HighScores :as HighScores)
(defn- HighScore/jnew_4 [& args] (JR/call jfile "./HighScore" "jnew_4" args))

# Java class RecordStoreHighScores
(var jproto nil)
(var jcell_hashTable :jnone)
(var jstatic_hashTable nil)
(var jsetstatic_hashTable nil)
(var jnew_6 nil)
(var jm_getInstance nil)
(var jm_getRecordId nil)
(var jm_addHighScore nil)
(var jm_removeLowestHighScore nil)
(var jm_load nil)
(var jm_isTooManyHighScores nil)
(var jm_isBestScore nil)
(var jm_toString nil)

(set jstatic_hashTable (fn jstatic_hashTable []
  (when (= jcell_hashTable :jnone) (set jcell_hashTable (:jm_createHashtable (StdUtil/jm_getInstance))))
  jcell_hashTable))
(set jsetstatic_hashTable (fn jsetstatic_hashTable [value] (set jcell_hashTable value)))

    
(set jnew_6 (fn jnew_6 [_abeClientInformation _gameInfo _name _heading _columnTwoHeading _recordComparatorInterface]
    (var this (table/setproto @{:jclass "RecordStoreHighScores" :f_logUtil nil :f_commonStrings nil :f_platformRecordIdUtil nil :f_tsUtil nil :f_RECORD_ID nil :f_MAXHIGHSCORES 0 :f_gameInfo nil :f_abeClientInformation nil :f_recordComparatorInterface nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_platformRecordIdUtil (PlatformRecordIdUtil/jm_getInstance))
    (put this :f_tsUtil (TsUtil/jm_getInstance))
    (put this :f_RECORD_ID "_HS")
    (put this :f_MAXHIGHSCORES 100)
    
    
    
        (JR/superInit this (HighScores/jnew_3 _name _heading _columnTwoHeading))
        (set (this :f_abeClientInformation) _abeClientInformation)
        (set (this :f_gameInfo) _gameInfo)
        (set (this :f_recordComparatorInterface) _recordComparatorInterface)
        (:jm_load this)
    this))
    
(set jm_getInstance (fn jm_getInstance [_abeClientInformation _gameInfo _highScoreName _heading _columnTwoHeading _recordComparatorInterface]
    (label jreturn
        (var _highScoresCanBeNull (JR/className (jstatic_hashTable)))
        (if (nil? _highScoresCanBeNull)
            (do
            (var _highScores (jnew_6 _abeClientInformation _gameInfo _highScoreName _heading _columnTwoHeading _recordComparatorInterface))
            (JR/className (jstatic_hashTable))
            (return jreturn _highScores)))
        (return jreturn _highScoresCanBeNull))))
    
(set jm_getRecordId (fn jm_getRecordId [this _abeClientInformation]
    (label jreturn
        (return jreturn (:jm_getRecordId (this :f_platformRecordIdUtil) _abeClientInformation (:jm_toString (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) ((CommonSeps/jm_getInstance) :f_UNDERSCORE)) (:jm_getName this)) (this :f_RECORD_ID))))))))
    
(set jm_addHighScore (fn jm_addHighScore [this _newHighScore]
        (var _recordStore (NullRecordStore/jstatic_NULL_RECORD_STORE))
        (defer (do
            (try
                (do
                (if (not (nil? _recordStore))
                    (do
                    (PreLogUtil/jm_put "Closing RecordStore" this ((this :f_commonStrings) :f_ADD))
                    (:jm_closeRecordStore _recordStore))))
                ([_e] (do
                (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_ADD) _e)))))
            (try
            (do
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendlong (:jm_append (StringMaker/jnew_0) "Adding HighScore: ") (:jm_getScore _newHighScore))) this ((this :f_commonStrings) :f_ADD))
            (if (:jm_isTooManyHighScores this)
                (do
                (:jm_putF (this :f_logUtil) "Removing Lowest Score" this ((this :f_commonStrings) :f_ADD))
                (:jm_removeLowestHighScore this)))
            (set _recordStore (RecordStore/jm_openRecordStore (:jm_getRecordId this (this :f_abeClientInformation)) true))
            (var _highScoreBytes (:jm_getAsBytes _newHighScore))
            (var _recordId (:jm_addRecord _recordStore _highScoreBytes 0 (length _highScoreBytes)))
            (:jm_load this))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_ADD) _e)))))))
    
(set jm_removeLowestHighScore (fn jm_removeLowestHighScore [this]
        (var _recordStore (NullRecordStore/jstatic_NULL_RECORD_STORE))
        (defer (do
            (try
                (do
                (if (not (nil? _recordStore))
                    (do
                    (PreLogUtil/jm_put "Closing RecordStore" this "removeLowestHighScore")
                    (:jm_closeRecordStore _recordStore))))
                ([_e] (do
                (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this "removeLowestHighScore" _e)))))
            (try
            (do
            (set _recordStore (RecordStore/jm_openRecordStore (:jm_getRecordId this (this :f_abeClientInformation)) true))
            (var _recordEnum (:jm_enumerateRecords _recordStore (NullRecordFilter/jstatic_NULL_RECORD_FILTER) (NullRecordComparator/jstatic_NULL_RECORD_COMPARATOR) true))
            (var _scoreComparator (this :f_recordComparatorInterface))
            (var _bestHighScore (HighScore/jnew_4 (JR/i32 (- 1)) "none" (GameInfo/jstatic_NONE) (:jm_getBestScore _scoreComparator)))
            (var _recordAsBytes nil)
            (var _byteArrayInputStream nil)
            (var _inputStream nil)
            (do
                (while (:jm_hasNextElement _recordEnum)
                    (do
                (var _id (:jm_nextRecordId _recordEnum))
                (set _recordAsBytes (:jm_getRecord (this :f_tsUtil) _recordStore _id))
                (if (not (nil? _recordAsBytes))
                    (do
                    (set _byteArrayInputStream (ByteArrayInputStream/jnew_1 _recordAsBytes))
                    (set _inputStream (DataInputStream/jnew_1 _byteArrayInputStream))
                    (var _name (:jm_readUTF _inputStream))
                    (var _nextScore (:jm_readLong _inputStream))
                    (var _nextCurrentHighScore (HighScore/jnew_4 _id _name (GameInfo/jstatic_NONE) _nextScore))
                    (if (= (:jm_compare (this :f_recordComparatorInterface) (:jm_getAsBytes _nextCurrentHighScore) (:jm_getAsBytes _bestHighScore)) (RecordComparator/jstatic_FOLLOWS))
                        (do
                        (set _bestHighScore _nextCurrentHighScore))))))))
            (if (not= (:jm_getId _bestHighScore) (JR/i32 (- 1)))
                (do
                (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendlong (:jm_append (StringMaker/jnew_0) "Removing Lowest HighScore: ") (:jm_getScore _bestHighScore))) this ((this :f_commonStrings) :f_LOAD))
                (:jm_deleteRecord _recordStore (:jm_getId _bestHighScore)))))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this "removeLowestHighScore" _e)))))))
    
(set jm_load (fn jm_load [this]
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
            (set _recordStore (RecordStore/jm_openRecordStore (:jm_getRecordId this (this :f_abeClientInformation)) true))
            (:jm_setList this (BasicArrayListD/jnew_0))
            (var _recordEnum (:jm_enumerateRecords _recordStore (NullRecordFilter/jstatic_NULL_RECORD_FILTER) (NullRecordComparator/jstatic_NULL_RECORD_COMPARATOR) true))
            (var _recordAsBytes nil)
            (var _byteArrayInputStream nil)
            (var _inputStream nil)
            (do
                (while (:jm_hasNextElement _recordEnum)
                    (do
                (var _id (:jm_nextRecordId _recordEnum))
                (set _recordAsBytes (:jm_getRecord (this :f_tsUtil) _recordStore _id))
                (if (not (nil? _recordAsBytes))
                    (do
                    (set _byteArrayInputStream (ByteArrayInputStream/jnew_1 _recordAsBytes))
                    (set _inputStream (DataInputStream/jnew_1 _byteArrayInputStream))
                    (try
                        (do
                        (var _name (:jm_readUTF _inputStream))
                        (var _score (:jm_readLong _inputStream))
                        (var _newHighScore (HighScore/jnew_4 _id _name (GameInfo/jstatic_NONE) _score))
                        (var _list (:jm_getList this))
                        (var _size (:jm_size _list))
                        (var _lastIndex _size)
                        (do
                            (var _index 0)
                            (var jbreak false)
                            (while (and (not jbreak) (< _index _size))
                                (label jcontinue
                            (var _highScore ((_list :f_objectArray) _index))
                            (if (= (:jm_compare (this :f_recordComparatorInterface) (:jm_getAsBytes _newHighScore) (:jm_getAsBytes _highScore)) (RecordComparator/jstatic_PRECEDES))
                                (do
                                (set _lastIndex _index)
                                (do (set jbreak true) (return jcontinue)))))
                                (unless jbreak (set _index (JR/i32 (+ _index 1))))))
                        (:jm_addAt _list _lastIndex _newHighScore))
                        ([_e] (do
                        (:jm_put (this :f_logUtil) "EOF" this ((this :f_commonStrings) :f_LOAD) _e)
                        (error _e))))))))))
            ([_e] (do
            (:jm_put (this :f_logUtil) "No High Scores" this ((this :f_commonStrings) :f_LOAD) _e)))))))
    
(set jm_isTooManyHighScores (fn jm_isTooManyHighScores [this]
    (label jreturn
        (if (and (not (nil? (:jm_getList this))) (< (JR/className (:jm_getList this)) (this :f_MAXHIGHSCORES)))
            (do
            (return jreturn false))
            (do
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) "HighScores RecordStore Max Reached: ") (this :f_MAXHIGHSCORES))) this "isTooManyHighScores")
            (return jreturn true))))))
    
(set jm_isBestScore (fn jm_isBestScore [this _newHighScore]
    (label jreturn
        (try
            (do
            (if (not (:jm_isTooManyHighScores this))
                (do
                (:jm_putF (this :f_logUtil) "Slot Available for a High Score" this "isBestScore")
                (return jreturn true))
                (do
                (var _list (:jm_getList this))
                (var _size (:jm_size _list))
                (do
                    (var _index 0)
                    (while (< _index _size)
                        (do
                    (var _highScore ((_list :f_objectArray) _index))
                    (if (= (:jm_compare (this :f_recordComparatorInterface) (:jm_getAsBytes _newHighScore) (:jm_getAsBytes _highScore)) (RecordComparator/jstatic_FOLLOWS))
                        (do
                        (:jm_putF (this :f_logUtil) "Obtained a High Score" this "isBestScore")
                        (return jreturn true))))
                        (do (set _index (JR/i32 (+ _index 1))))))))
            (:jm_putF (this :f_logUtil) "Not a High Score" this "isBestScore")
            (return jreturn false))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_ADD) _e)
            (error _e)))))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer ((get HighScores/jproto :jm_toString) this))
        (var _list (:jm_getList this))
        (var _size (:jm_size _list))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _highScore ((_list :f_objectArray) _index))
            (:jm_append _stringBuffer (:jm_getScoreString _highScore))
            (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_COMMA_SEP)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto (table/setproto @{:jm_getRecordId jm_getRecordId :jm_addHighScore jm_addHighScore :jm_removeLowestHighScore jm_removeLowestHighScore :jm_load jm_load :jm_isTooManyHighScores jm_isTooManyHighScores :jm_isBestScore jm_isBestScore :jm_toString jm_toString} HighScores/jproto))


