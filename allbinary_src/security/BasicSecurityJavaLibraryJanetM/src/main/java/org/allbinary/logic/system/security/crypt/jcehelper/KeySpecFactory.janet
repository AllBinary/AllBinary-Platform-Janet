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
(import ../../../../../../../java/security/spec/KeySpec :as KeySpec)
(import ../../../../../../../javax/crypto/spec/DESKeySpec :as DESKeySpec)
(import ../../../../../../../javax/crypto/spec/DESedeKeySpec :as DESedeKeySpec)
(defn- TsUtil/jm_getInstance_0 [& args] (JR/call jfile "../../../../../../../org/allbinary/TsUtil" "jm_getInstance_0" args))
(defn- PreLogUtil/jm_putOE [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_putOE" args))
(defn- CommonStrings/jm_getInstance_0 [& args] (JR/call jfile "../../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance_0" args))

# Java class KeySpecFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance_0 nil)
(var jm_getInstance_2 nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance_0 (fn jm_getInstance_0 []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "KeySpecFactory" :f_DES nil :f_DESEDE nil :f_BLOWFISH nil} jproto))
    (put this :f_DES "DES")
    (put this :f_DESEDE "DESede")
    (put this :f_BLOWFISH "Blowfish")
    this))
    
(set jm_getInstance_2 (fn jm_getInstance_2 [this _algorithm _keyData]
    (label jreturn
        (try
            (do
            (var _tsUtil (TsUtil/jm_getInstance_0))
            (if (= (:jm_compareTo _tsUtil _algorithm (this :f_DES)) 0)
                (do
                (return jreturn (DESKeySpec/jnew_1 _keyData)))
                (if (= (:jm_compareTo _tsUtil _algorithm (this :f_DESEDE)) 0)
                (do
                (return jreturn (DESedeKeySpec/jnew_1 _keyData)))
                (do
                (error (JR/newException "RuntimeException"))))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance_0))
            (PreLogUtil/jm_putOE (_commonStrings :f_EXCEPTION) this (_commonStrings :f_GET_INSTANCE) _e)
            (error (JR/newException "RuntimeException"))))))))

(set jproto @{:jm_getInstance_2 jm_getInstance_2})


