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
# package org.allbinary.logic.system.security.crypt.jcehelper

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_putOE [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_putOE" args))
(defn- ByteUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/java/byteutil/ByteUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class BasicCrypt
(var jproto nil)
(var jnew_1 nil)
(var jm_encrypt nil)
(var jm_decrypt nil)
(var jm_mutilate nil)

    
(set jnew_1 (fn jnew_1 [_keyAsString]
    (var this (table/setproto @{:jclass "BasicCrypt" :f_byteUtil nil :f_key nil} jproto))
    (put this :f_byteUtil (ByteUtil/jm_getInstance))
    
        (var _key ((NullUtil/jm_getInstance) :f_NULL_BYTE_ARRAY))
        (try
            (do
            (set _key (:jm_getByteArray (TsUtil/jm_getInstance) _keyAsString)))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (PreLogUtil/jm_putOE (_commonStrings :f_EXCEPTION) this "AbCrypt(alg,key)" _e))))
        (set (this :f_key) _key)
    this))
    
(set jm_encrypt (fn jm_encrypt [this _array]
    (label jreturn
        (try
            (do
            (return jreturn (:jm_mutilate this _array)))
            ([_e] (do
            (PreLogUtil/jm_putOE "Encrypt Failed" this "encrypt" _e)
            (return jreturn ((NullUtil/jm_getInstance) :f_NULL_BYTE_ARRAY))))))))
    
(set jm_decrypt (fn jm_decrypt [this _array]
    (label jreturn
        (try
            (do
            (return jreturn (:jm_mutilate this _array)))
            ([_e] (do
            (PreLogUtil/jm_putOE "decrypt Failed" this "decrypt" _e)
            (return jreturn ((NullUtil/jm_getInstance) :f_NULL_BYTE_ARRAY))))))))
    
(set jm_mutilate (fn jm_mutilate [this _array]
    (var _array _array)
    (label jreturn
        (var _value 0)
        (do
            (var _index 0)
            (while (< _index (length (this :f_key)))
                (do
            (set _value ((this :f_key) _index))
            (set _array (:jm_xor (this :f_byteUtil) _array _value)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _array))))

(set jproto @{:jm_encrypt jm_encrypt :jm_decrypt jm_decrypt :jm_mutilate jm_mutilate})


