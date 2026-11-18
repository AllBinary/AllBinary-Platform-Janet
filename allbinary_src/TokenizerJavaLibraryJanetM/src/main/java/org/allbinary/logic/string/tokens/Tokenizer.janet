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
# package org.allbinary.logic.string.tokens

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class Tokenizer
(var jproto nil)
(var jnew_1 nil)
(var jm_setSep nil)
(var jm_setEndSep nil)
(var jm_getInsideSep nil)
(var jm_getTokensFromString nil)
(var jm_getTokens nil)

    
(set jnew_1 (fn jnew_1 [_sep]
    (var this (table/setproto @{:jclass "Tokenizer" :f_sep nil :f_endSep nil} jproto))
    
    (put this :f_endSep ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
        (if (= (:jm_compareTo (TsUtil/jm_getInstance) _sep ((StringUtil/jm_getInstance) :f_EMPTY_STRING)) 0)
            (do
            (error (JR/newException "Exception" "Sep provided is not valid"))))
        (set (this :f_sep) _sep)
    this))
    
(set jm_setSep (fn jm_setSep [this _sep]
        (set (this :f_sep) _sep)))
    
(set jm_setEndSep (fn jm_setEndSep [this _endSep]
        (set (this :f_endSep) _endSep)))
    
(set jm_getInsideSep (fn jm_getInsideSep [this _string]
    (label jreturn
        (var _tokenList (BasicArrayListD/jnew_0))
        (var _index 0)
        (var _size (length _string))
        (do
            (var jbreak false)
            (while (and (not jbreak) (< _index _size))
                (label jcontinue
            (set _index (JR/indexOf _string (this :f_sep) _index))
            (if (not= _index (JR/i32 (- 1)))
                (do
                (var _end (JR/indexOf _string (this :f_endSep) (JR/i32 (+ _index (length (this :f_sep))))))
                (if (not= _end (JR/i32 (- 1)))
                    (do
                    (:jm_add _tokenList (JR/substring _string (JR/i32 (+ _index (length (this :f_sep)))) (JR/i32 (- _end (JR/i32 (- (length (this :f_endSep)) 1))))))
                    (set _index (JR/i32 (+ _end (length (this :f_endSep))))))
                    (do
                    nil)))
                (do
                (do (set jbreak true) (return jcontinue)))))))
        (return jreturn _tokenList))))
    
(set jm_getTokensFromString (fn jm_getTokensFromString [this _string _tokenVector]
    (label jreturn
        (var _index 0)
        (var _end 0)
        (do
            (var jbreak false)
            (while (and (not jbreak) (< _index (length _string)))
                (label jcontinue
            (set _end (JR/indexOf _string (this :f_sep) _index))
            (if (not= _end (JR/i32 (- 1)))
                (do
                (:jm_add _tokenVector (JR/substring _string _index _end))
                (set _index (JR/i32 (+ _end (length (this :f_sep))))))
                (do
                (:jm_add _tokenVector (JR/substring _string _index (length _string)))
                (do (set jbreak true) (return jcontinue)))))))
        (return jreturn _tokenVector))))
    
(set jm_getTokens (fn jm_getTokens [this _stringVector]
    (label jreturn
        (var _tokenHashtable (:jm_createHashtable (StdUtil/jm_getInstance)))
        (var _string ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
        (var _end 0)
        (var _size (:jm_size _stringVector))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _string ((_stringVector :f_objectArray) _index))
            (set _end (JR/indexOf _string (this :f_sep)))
            (if (>= _end 0)
                (do
                (:jm_put _tokenHashtable (JR/substring _string 0 _end) (JR/substring _string (JR/i32 (+ _end 1)) (length _string))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _tokenHashtable))))

(set jproto @{:jm_setSep jm_setSep :jm_setEndSep jm_setEndSep :jm_getInsideSep jm_getInsideSep :jm_getTokensFromString jm_getTokensFromString :jm_getTokens jm_getTokens})


