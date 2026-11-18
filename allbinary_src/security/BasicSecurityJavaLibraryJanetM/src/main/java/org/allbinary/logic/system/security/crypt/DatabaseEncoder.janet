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
# package org.allbinary.logic.system.security.crypt

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_putOE [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_putOE" args))
(defn- PreLogUtil/jm_putSE [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_putSE" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- Tokenizer/jnew_1 [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/tokens/Tokenizer" "jnew_1" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(import ../../../../../../java/lang/Byte :as Byte)

# Java class DatabaseEncoder
(var jproto nil)
(var jnew_0 nil)
(var jm_encode nil)
(var jm_decode nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DatabaseEncoder"} jproto))
    this))
    
(set jm_encode (fn jm_encode [_value]
    (label jreturn
        (try
            (do
            (var _array _value)
            (var _stringBuffer (StringMaker/jnew_0))
            (do
                (var _index 0)
                (while (< _index (length _array))
                    (do
                (:jm_append _stringBuffer (:jm_toString (_array _index)))
                (if (< _index (JR/i32 (- (length _array) 1)))
                    (do
                    (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE)))))
                    (do (set _index (JR/i32 (+ _index 1))))))
            (return jreturn (:jm_toString _stringBuffer)))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (PreLogUtil/jm_putOE (_commonStrings :f_EXCEPTION) "DatabaseEncoder" "decode" _e)
            (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING))))))))
    
(set jm_decode (fn jm_decode [_value]
    (label jreturn
        (try
            (do
            (var _tokenizer (Tokenizer/jnew_1 ((CommonSeps/jm_getInstance) :f_SPACE)))
            (var _vector (:jm_getTokensFromString _tokenizer _value (BasicArrayListD/jnew_0)))
            (var _size (:jm_size _vector))
            (var _decode (array/new-filled _size 0))
            (var _byteOfData nil)
            (do
                (var _index 0)
                (while (< _index _size)
                    (do
                (set _byteOfData ((_vector :f_objectArray) _index))
                (set (_decode _index) (Byte/jm_parseByte _byteOfData)))
                    (do (set _index (JR/i32 (+ _index 1))))))
            (return jreturn _decode))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (PreLogUtil/jm_putSE (_commonStrings :f_EXCEPTION) "DatabaseEncoder" "decode" _e)
            (return jreturn ((NullUtil/jm_getInstance) :f_NULL_BYTE_ARRAY))))))))

(set jproto @{})


