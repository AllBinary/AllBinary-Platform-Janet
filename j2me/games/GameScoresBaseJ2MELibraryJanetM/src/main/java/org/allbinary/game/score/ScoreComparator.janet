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
(defn- RecordComparator/jstatic_EQUIVALENT [& args] (JR/call jfile "../../../../javax/microedition/rms/RecordComparator" "jstatic_EQUIVALENT" args))
(defn- RecordComparator/jstatic_FOLLOWS [& args] (JR/call jfile "../../../../javax/microedition/rms/RecordComparator" "jstatic_FOLLOWS" args))
(defn- RecordComparator/jstatic_PRECEDES [& args] (JR/call jfile "../../../../javax/microedition/rms/RecordComparator" "jstatic_PRECEDES" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../java/lang/Long :as Long)

# Java class ScoreComparator
(var jproto nil)
(var jnew_1 nil)
(var jm_getBestScore nil)
(var jm_compare nil)
(var jm_getHighTooLow nil)
(var jm_getLowTooHigh nil)

    
(set jnew_1 (fn jnew_1 [_isHighestBest]
    (var this (table/setproto @{:jclass "ScoreComparator" :f_logUtil nil :f_isHighestBest false} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
        (set (this :f_isHighestBest) _isHighestBest)
    this))
    
(set jm_getBestScore (fn jm_getBestScore [this]
    (label jreturn
        (return jreturn (if (this :f_isHighestBest) (Long/jstatic_MAX_VALUE) 0)))))
    
(set jm_compare (fn jm_compare [this _recordOne _recordTwo]
    (label jreturn
        (var _byteArrayInputStreamOne (ByteArrayInputStream/jnew_1 _recordOne))
        (var _inputStreamOne (DataInputStream/jnew_1 _byteArrayInputStreamOne))
        (var _byteArrayInputStreamTwo (ByteArrayInputStream/jnew_1 _recordTwo))
        (var _inputStreamTwo (DataInputStream/jnew_1 _byteArrayInputStreamTwo))
        (var _scoreOne 0)
        (var _scoreTwo 0)
        (try
            (do
            (:jm_readUTF _inputStreamOne)
            (:jm_readUTF _inputStreamTwo)
            (set _scoreOne (:jm_readLong _inputStreamOne))
            (set _scoreTwo (:jm_readLong _inputStreamTwo)))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this "compare" _e))))
        (if (this :f_isHighestBest)
            (do
            (return jreturn (:jm_getHighTooLow this _scoreOne _scoreTwo)))
            (do
            (return jreturn (:jm_getLowTooHigh this _scoreOne _scoreTwo)))))))
    
(set jm_getHighTooLow (fn jm_getHighTooLow [this _scoreOne _scoreTwo]
    (label jreturn
        (if (> _scoreOne _scoreTwo)
            (do
            (return jreturn (RecordComparator/jstatic_PRECEDES)))
            (if (< _scoreOne _scoreTwo)
            (do
            (return jreturn (RecordComparator/jstatic_FOLLOWS)))
            (do
            (return jreturn (RecordComparator/jstatic_EQUIVALENT))))))))
    
(set jm_getLowTooHigh (fn jm_getLowTooHigh [this _scoreOne _scoreTwo]
    (label jreturn
        (if (< _scoreOne _scoreTwo)
            (do
            (return jreturn (RecordComparator/jstatic_PRECEDES)))
            (if (> _scoreOne _scoreTwo)
            (do
            (return jreturn (RecordComparator/jstatic_FOLLOWS)))
            (do
            (return jreturn (RecordComparator/jstatic_EQUIVALENT))))))))

(set jproto @{:jm_getBestScore jm_getBestScore :jm_compare jm_compare :jm_getHighTooLow jm_getHighTooLow :jm_getLowTooHigh jm_getLowTooHigh})


