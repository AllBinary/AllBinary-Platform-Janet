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
# package org.allbinary.init.crypt.jcehelper

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../java/io/ByteArrayInputStream :as ByteArrayInputStream)
(import ../../../../../java/io/ByteArrayOutputStream :as ByteArrayOutputStream)
(import ../../../../../java/io/InputStream :as InputStream)
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))

# Java class BasicCryptUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getDecryptedInputStream nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicCryptUtil" :f_logUtil nil :f_tsUtil nil :f_XML_START nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_tsUtil (TsUtil/jm_getInstance))
    (put this :f_XML_START "<?xml")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getDecryptedInputStream (fn jm_getDecryptedInputStream [this _inputStream _cryptInterface]
    (label jreturn
        (var _buffer (ByteArrayOutputStream/jnew_0))
        (var _ch 0)
        (do
            (var jbreak false)
            (while (and (not jbreak) true)
                (label jcontinue
            (set _ch (:jm_read _inputStream))
            (if (= _ch (JR/i32 (- 1)))
                (do
                (do (set jbreak true) (return jcontinue))))
            (:jm_write _buffer _ch))))
        (var _decrypted (:jm_decrypt _cryptInterface (:jm_toByteArray _buffer)))
        (var _decryptedString _decrypted)
        (var _index (JR/indexOf _decryptedString (this :f_XML_START)))
        (if (> _index 0)
            (do
            (set _decryptedString (JR/substring _decryptedString _index))))
        (return jreturn (ByteArrayInputStream/jnew_1 (:jm_getByteArray (this :f_tsUtil) _decryptedString))))))

(set jproto @{:jm_getDecryptedInputStream jm_getDecryptedInputStream})


