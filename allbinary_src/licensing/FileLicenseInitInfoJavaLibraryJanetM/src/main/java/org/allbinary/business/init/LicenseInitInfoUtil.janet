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
# package org.allbinary.business.init

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- PATH_GLOBALS/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/globals/PATH_GLOBALS" "jm_getInstance" args))
(defn- URLGLOBALS/jm_getMainPath [& args] (JR/call jfile "../../../../org/allbinary/globals/URLGLOBALS" "jm_getMainPath" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- AbDataInputStream/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/logic/io/AbDataInputStream" "jnew_1" args))
(defn- DataOutputStreamFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/io/DataOutputStreamFactory" "jm_getInstance" args))
(defn- FileStreamFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/io/FileStreamFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- DatabaseEncoder/jm_encode [& args] (JR/call jfile "../../../../org/allbinary/logic/system/security/crypt/DatabaseEncoder" "jm_encode" args))
(defn- DatabaseEncoder/jm_decode [& args] (JR/call jfile "../../../../org/allbinary/logic/system/security/crypt/DatabaseEncoder" "jm_decode" args))
(defn- WeakCrypt/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/logic/system/security/crypt/WeakCrypt" "jnew_1" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- LicenseInitInfo/jnew_0 [& args] (JR/call jfile "./LicenseInitInfo" "jnew_0" args))

# Java class LicenseInitInfoUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_setFilePath nil)
(var jm_write nil)
(var jm_read nil)
(var jm_readAgain nil)
(var jm_getFilePath nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LicenseInitInfoUtil" :f_logUtil nil :f_stringUtil nil :f_INITFILENAME nil :f_ABOUT nil :f_PRIVACY_POLICY nil :f_filePath nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_stringUtil (StringUtil/jm_getInstance))
    (put this :f_INITFILENAME "licenseinitdata.dat")
    (put this :f_ABOUT "about")
    (put this :f_PRIVACY_POLICY "privacy_policy")
    (put this :f_filePath ((this :f_stringUtil) :f_EMPTY_STRING))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_setFilePath (fn jm_setFilePath [this _filePath]
        (set (this :f_filePath) _filePath)))
    
(set jm_write (fn jm_write [this _initData]
        (if (= (this :f_filePath) ((this :f_stringUtil) :f_EMPTY_STRING))
            (do
            (set (this :f_filePath) (JR/i32 (+ (URLGLOBALS/jm_getMainPath) ((PATH_GLOBALS/jm_getInstance) :f_INIT_PATH))))))
        (try
            (do
            (var _tsUtil (TsUtil/jm_getInstance))
            (var _dataOutputStream (:jm_getInstance (DataOutputStreamFactory/jm_getInstance) (this :f_filePath) (this :f_INITFILENAME)))
            (var _licenseIdCrypted (:jm_getByteArray _tsUtil (:jm_encrypt (WeakCrypt/jnew_1 1) (:jm_getLicenseId _initData))))
            (:jm_writeUTF _dataOutputStream (DatabaseEncoder/jm_encode _licenseIdCrypted))
            (var _numberOfLicenseServers (:jm_getNumberOfServers _initData))
            (:jm_writeInt _dataOutputStream _numberOfLicenseServers)
            (var _licenseServerCrypted nil)
            (do
                (var _index 0)
                (while (< _index _numberOfLicenseServers)
                    (do
                (set _licenseServerCrypted (:jm_getByteArray _tsUtil (:jm_encrypt (WeakCrypt/jnew_1 3) (:jm_getServer _initData _index))))
                (:jm_writeUTF _dataOutputStream (DatabaseEncoder/jm_encode _licenseServerCrypted)))
                    (do (set _index (JR/i32 (+ _index 1)))))))
            ([_e] (do
            (:jm_put (this :f_logUtil) (string "Command Failed: " (this :f_INITFILENAME)) this "write" _e)
            (:jm_delete (FileStreamFactory/jm_getInstance) (this :f_filePath) (this :f_INITFILENAME))
            (error _e))))))
    
(set jm_read (fn jm_read [this]
    (label jreturn
        (return jreturn (:jm_readAgain this 0)))))
    
(set jm_readAgain (fn jm_readAgain [this _initializeCounter]
    (label jreturn
        (var _METHOD_NAME "readAgain")
        (if (= (this :f_filePath) ((this :f_stringUtil) :f_EMPTY_STRING))
            (do
            (set (this :f_filePath) (JR/i32 (+ (URLGLOBALS/jm_getMainPath) ((PATH_GLOBALS/jm_getInstance) :f_INIT_PATH))))))
        (try
            (do
            (:jm_putF (this :f_logUtil) (string "LicenseInitInfo File: " (this :f_INITFILENAME)) this _METHOD_NAME)
            (var _fileStreamFactory (FileStreamFactory/jm_getInstance))
            (var _iFile (:jm_getFileInputStreamInstance _fileStreamFactory (this :f_filePath) (this :f_INITFILENAME)))
            (if (not (nil? _iFile))
                (do
                (var _iData (AbDataInputStream/jnew_1 _iFile))
                (var _initInfo (LicenseInitInfo/jnew_0))
                (var _decodedByteArray (DatabaseEncoder/jm_decode (:jm_readUTF _iData)))
                (var _licenseIdDecoded _decodedByteArray)
                (:jm_setLicenseId _initInfo (:jm_decrypt (WeakCrypt/jnew_1 1) _licenseIdDecoded))
                (var _numberOfLicenseServers (:jm_readInt _iData))
                (var _NEXT_FILE (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_NEXT)) " License Server From File: ")))
                (var _licenseServerDecoded nil)
                (do
                    (var _index 0)
                    (while (< _index _numberOfLicenseServers)
                        (do
                    (set _decodedByteArray (DatabaseEncoder/jm_decode (:jm_readUTF _iData)))
                    (set _licenseServerDecoded _decodedByteArray)
                    (:jm_setServer _initInfo (:jm_decrypt (WeakCrypt/jnew_1 3) _licenseServerDecoded) _index)
                    (:jm_putF (this :f_logUtil) (string _NEXT_FILE (JR/str (:jm_getServer _initInfo _index))) this _METHOD_NAME))
                        (do (set _index (JR/i32 (+ _index 1))))))
                (return jreturn _initInfo))
                (do
                (error (JR/newException "Exception" (string "Could Not Load License InitInfo: " (this :f_INITFILENAME)))))))
            ([_e] (do
            (try
                (do
                (:jm_put (this :f_logUtil) (string "Command Failed: " (this :f_INITFILENAME)) this _METHOD_NAME _e))
                ([_e2] (do
                (:jm_put (this :f_logUtil) (string "LicenseInitInfo Read Retry: " (this :f_INITFILENAME)) this "readAgain()" _e2))))
            (error (JR/newException "Exception" (string "LicenseInitInfo Read Error: " (this :f_INITFILENAME))))))))))
    
(set jm_getFilePath (fn jm_getFilePath [this]
    (label jreturn
        (return jreturn (this :f_filePath)))))

(set jproto @{:jm_setFilePath jm_setFilePath :jm_write jm_write :jm_read jm_read :jm_readAgain jm_readAgain :jm_getFilePath jm_getFilePath})


