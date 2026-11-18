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
(import ../../../../../../../java/security/Security :as Security)
(import ../../../../../../../java/security/spec/KeySpec :as KeySpec)
(import ../../../../../../../javax/crypto/Cipher :as Cipher)
(import ../../../../../../../javax/crypto/SecretKey :as SecretKey)
(import ../../../../../../../javax/crypto/SecretKeyFactory :as SecretKeyFactory)
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_putOE [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_putOE" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BouncyCastleProvider/jnew_0 [& args] (JR/call jfile "../../../../../../../org/bouncycastle/jce/provider/BouncyCastleProvider" "jnew_0" args))
(defn- BaseSecretComposite/jstatic_NULL_SECRET_COMPOSITE [& args] (JR/call jfile "./BaseSecretComposite" "jstatic_NULL_SECRET_COMPOSITE" args))
(defn- KeySpecFactory/jm_getInstance [& args] (JR/call jfile "./KeySpecFactory" "jm_getInstance" args))
(defn- SecretComposite/jnew_3 [& args] (JR/call jfile "./SecretComposite" "jnew_3" args))

# Java class AbCrypt
(var jproto nil)
(var jnew_1 nil)
(var jm_init nil)
(var jm_encrypt nil)
(var jm_decrypt nil)

    
(set jnew_1 (fn jnew_1 [_algorithm]
    (var this (table/setproto @{:jclass "AbCrypt" :f_tsUtil nil :f_secretComposite nil :f_algorithm nil} jproto))
    (put this :f_tsUtil (TsUtil/jm_getInstance))
    (put this :f_secretComposite (BaseSecretComposite/jstatic_NULL_SECRET_COMPOSITE))
    
        (set (this :f_algorithm) _algorithm)
    this))
    
(set jm_init (fn jm_init [this _keyAsString]
        (var _commonStrings (CommonStrings/jm_getInstance))
        (try
            (do
            (try
                (do
                (Security/jm_addProvider (BouncyCastleProvider/jnew_0)))
                ([_e] (do
                (PreLogUtil/jm_putOE (_commonStrings :f_EXCEPTION) this (_commonStrings :f_INIT) _e))))
            (var _key (:jm_getByteArray (this :f_tsUtil) _keyAsString))
            (var _keySpec (:jm_getInstance (KeySpecFactory/jm_getInstance) (this :f_algorithm) _key))
            (var _keyFactory (SecretKeyFactory/jm_getInstance (this :f_algorithm)))
            (var _secretKey (:jm_generateSecret _keyFactory _keySpec))
            (var _cipher (Cipher/jm_getInstance (this :f_algorithm)))
            (set (this :f_secretComposite) (SecretComposite/jnew_3 _secretKey _cipher _key)))
            ([_e] (do
            (PreLogUtil/jm_putOE "init Failed" this (_commonStrings :f_INIT) _e))))))
    
(set jm_encrypt (fn jm_encrypt [this _array]
    (label jreturn
        (try
            (do
            (return jreturn (:jm_encrypt (this :f_secretComposite) _array)))
            ([_e] (do
            (PreLogUtil/jm_putOE "Encrypt Failed" this "encrypt" _e)
            (return jreturn ((NullUtil/jm_getInstance) :f_NULL_BYTE_ARRAY))))))))
    
(set jm_decrypt (fn jm_decrypt [this _array]
    (label jreturn
        (try
            (do
            (return jreturn (:jm_decrypt (this :f_secretComposite) _array)))
            ([_e] (do
            (PreLogUtil/jm_putOE "decrypt Failed" this "decrypt" _e)
            (return jreturn ((NullUtil/jm_getInstance) :f_NULL_BYTE_ARRAY))))))))

(set jproto @{:jm_init jm_init :jm_encrypt jm_encrypt :jm_decrypt jm_decrypt})


