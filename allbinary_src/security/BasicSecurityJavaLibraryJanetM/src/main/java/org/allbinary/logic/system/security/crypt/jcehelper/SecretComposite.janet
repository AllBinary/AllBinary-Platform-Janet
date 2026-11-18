# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
(import ../../../../../../../javax/crypto/Cipher :as Cipher)
(import ../../../../../../../javax/crypto/SecretKey :as SecretKey)
(defn- ByteUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/java/byteutil/ByteUtil" "jm_getInstance" args))
(import ./BaseSecretComposite :as BaseSecretComposite)

# Java class SecretComposite
(var jproto nil)
(var jnew_3 nil)
(var jm_encrypt nil)
(var jm_decrypt nil)
(var jm_mutilate nil)

    
(set jnew_3 (fn jnew_3 [_secretKey _cipher _key]
    (var this (table/setproto @{:jclass "SecretComposite" :f_byteUtil nil :f_cipher nil :f_secretKey nil :f_key nil} jproto))
    (put this :f_byteUtil (ByteUtil/jm_getInstance))
    
    
    
    (JR/superInit this (BaseSecretComposite/jnew_0))
        (set (this :f_secretKey) _secretKey)
        (set (this :f_cipher) _cipher)
        (set (this :f_key) _key)
    this))
    
(set jm_encrypt (fn jm_encrypt [this _array]
    (var _array _array)
    (label jreturn
        (set _array (:jm_mutilate this _array))
        (:jm_init (this :f_cipher) (Cipher/jstatic_ENCRYPT_MODE) (this :f_secretKey))
        (return jreturn (:jm_doFinal (this :f_cipher) _array)))))
    
(set jm_decrypt (fn jm_decrypt [this _array]
    (label jreturn
        (:jm_init (this :f_cipher) (Cipher/jstatic_DECRYPT_MODE) (this :f_secretKey))
        (return jreturn (:jm_mutilate this (:jm_doFinal (this :f_cipher) _array))))))
    
(set jm_mutilate (fn jm_mutilate [this _array]
    (var _array _array)
    (label jreturn
        (do
            (var _index 0)
            (while (< _index (length (this :f_key)))
                (do
            (var _value ((this :f_key) _index))
            (if (and (< _value 8) (> _value 0))
                (do
                (set _array (:jm_xorByte (this :f_byteUtil) _array _value)))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _array))))

(set jproto (table/setproto @{:jm_encrypt jm_encrypt :jm_decrypt jm_decrypt :jm_mutilate jm_mutilate} BaseSecretComposite/jproto))


