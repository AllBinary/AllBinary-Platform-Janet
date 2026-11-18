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
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_putOE [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_putOE" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- AbCrypt/jnew_1 [& args] (JR/call jfile "../../../../../../org/allbinary/logic/system/security/crypt/jcehelper/AbCrypt" "jnew_1" args))
(defn- KeySpecFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- DatabaseEncoder/jm_encode [& args] (JR/call jfile "./DatabaseEncoder" "jm_encode" args))
(defn- DatabaseEncoder/jm_decode [& args] (JR/call jfile "./DatabaseEncoder" "jm_decode" args))

# Java class WeakCrypt
(var jproto nil)
(var jcell_keys :jnone)
(var jstatic_keys nil)
(var jsetstatic_keys nil)
(var jcell_KEYMAX :jnone)
(var jstatic_KEYMAX nil)
(var jsetstatic_KEYMAX nil)
(var jnew_1 nil)
(var jm_encrypt nil)
(var jm_decrypt nil)

(set jstatic_keys (fn jstatic_keys []
  (when (= jcell_keys :jnone) (set jcell_keys @["qwres6qewrupoi1132790jfahleavi89398" "143uk32lngf8675gt1tv9214uvt924ut9u9" "12kvjlvlkv11445v12951v512v9m51295v1" "gampipoiupg4g43y5u238tu2485u20u0932" "a93u5uu02s2d2g3259u4395u409u093u9vu" "nlkxzj90je3mln9l8l89qjf0j3v50j23r9j" "2lk5fn5j23nr8f0233vq35n23jn58vhy843" "9q24334m598t092tkn2iv0982456n425j9g" "5m9uvmt9436243m5v34g09d43i52ki35g99" "n123lr1iubiu2br32lv32rbu23b32ub2rlb" "va0u0iovji2ojpvj2oij22poiu4ov2uv28v" "bkk80gn2v9uc902340ut209pcup0u09utc9" "mn32m32neee23c42fn32nf3mf2n3fn2m3fm" "zcxpozo3423voizupovsijevnv3n33o33n3" "v0345324thv93h03893893vh893v8h3vhzz" "v8na898v8wyef9ty39yv98yaw39yeeyf8ye" "45zd36d34jg09434hfshp8uj9sy8s7cyr78" "b098yy0908vdvh983b2lb327980a76s5e5e" "v90y9v9p8y3r98pagsdgsagyr6y3985yhfh" "vblkzhhzp8yvzi8u4t9856456zy3rv8a388" "da7696023rgf28dssfa98asd879hg32hewe" "afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf" "4gijvqo8vq984hv984hj5j3511h832hf833"]))
  jcell_keys))
(set jsetstatic_keys (fn jsetstatic_keys [value] (set jcell_keys value)))

(set jstatic_KEYMAX (fn jstatic_KEYMAX []
  (when (= jcell_KEYMAX :jnone) (set jcell_KEYMAX (length (jstatic_keys))))
  jcell_KEYMAX))
(set jsetstatic_KEYMAX (fn jsetstatic_KEYMAX [value] (set jcell_KEYMAX value)))

    
(set jnew_1 (fn jnew_1 [_key]
    (var this (table/setproto @{:jclass "WeakCrypt" :f_tsUtil nil :f_abCrypt nil} jproto))
    (put this :f_tsUtil (TsUtil/jm_getInstance))
    (put this :f_abCrypt (AbCrypt/jnew_1 ((KeySpecFactory/jm_getInstance) :f_DES)))
        (try
            (do
            (:jm_init (this :f_abCrypt) ((jstatic_keys) _key)))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (PreLogUtil/jm_putOE (_commonStrings :f_EXCEPTION) this "SuperCrypt(key)" _e))))
    this))
    
(set jm_encrypt (fn jm_encrypt [this _value]
    (label jreturn
        (try
            (do
            (var _crypted (:jm_encrypt (this :f_abCrypt) (:jm_getByteArray (this :f_tsUtil) _value)))
            (return jreturn (DatabaseEncoder/jm_encode _crypted)))
            ([_e] (do
            (PreLogUtil/jm_putOE "Encrypt Failed" this "encrypt" _e)
            (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING))))))))
    
(set jm_decrypt (fn jm_decrypt [this _value]
    (label jreturn
        (try
            (do
            (var _decrypted (:jm_decrypt (this :f_abCrypt) (DatabaseEncoder/jm_decode _value)))
            (return jreturn _decrypted))
            ([_e] (do
            (PreLogUtil/jm_putOE "decrypt Failed" this "decrypt" _e)
            (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING))))))))

(set jproto @{:jm_encrypt jm_encrypt :jm_decrypt jm_decrypt})


