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
# package org.allbinary.logic.system.security.licensing

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../java/io/InputStream :as InputStream)
(import ../../../../../../java/io/OutputStream :as OutputStream)
(defn- LicenseInitInfoUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/business/init/LicenseInitInfoUtil" "jm_getInstance" args))
(defn- ResourceUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/data/resource/ResourceUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- FileStreamFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/io/FileStreamFactory" "jm_getInstance" args))
(defn- StreamUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/io/StreamUtil" "jm_getInstance" args))
(defn- FileFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/io/file/FileFactory" "jm_getInstance" args))
(defn- SimpleFileUtil/jm_nullOutputStream [& args] (JR/call jfile "../../../../../../org/allbinary/logic/io/file/SimpleFileUtil" "jm_nullOutputStream" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class LicenseServerInitFileUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_write nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LicenseServerInitFileUtil" :f_logUtil nil :f_commonStrings nil :f_NULL_OUTPUT_STREAM nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_NULL_OUTPUT_STREAM (SimpleFileUtil/jm_nullOutputStream))
    this))

    
(set jm_init (fn jm_init [this]
        (try
            (do
            (var _filePath ((LicenseInitInfoUtil/jm_getInstance) :f_INITFILENAME))
            (:jm_setFilePath (LicenseInitInfoUtil/jm_getInstance) ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
            (if (:jm_isFile (FileFactory/jm_getInstance) _filePath)
                (do
                (:jm_putF (this :f_logUtil) "Using Existing License File" this ((this :f_commonStrings) :f_INIT)))
                (do
                (:jm_write this))))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_INIT) _e))))))
    
(set jm_write (fn jm_write [this]
        (var _fileOutputStream (this :f_NULL_OUTPUT_STREAM))
        (defer (do
            (:jm_close (StreamUtil/jm_getInstance) _fileOutputStream))
            (try
            (do
            (var _resourceUtil (ResourceUtil/jm_getInstance))
            (var _filePath ((LicenseInitInfoUtil/jm_getInstance) :f_INITFILENAME))
            (var _inputStream (:jm_getResourceAsStream _resourceUtil _filePath))
            (:jm_putF (this :f_logUtil) "Writing Default License File" this ((this :f_commonStrings) :f_INIT))
            (var _fileStreamFactory (FileStreamFactory/jm_getInstance))
            (set _fileOutputStream (:jm_getFileOutputStreamInstance _fileStreamFactory ((StringUtil/jm_getInstance) :f_EMPTY_STRING) _filePath))
            (var _b 0)
            (var _index 0)
            (do
                (var jbreak false)
                (while (and (not jbreak) true)
                    (label jcontinue
                (set _b (:jm_read _inputStream))
                (if (= _b (JR/i32 (- 1)))
                    (do
                    (do (set jbreak true) (return jcontinue))))
                (:jm_write _fileOutputStream _b)
                (set _index (JR/i32 (+ _index 1))))))
            (:jm_putF (this :f_logUtil) (string "Wrote Bytes: " (JR/str _index)) this ((this :f_commonStrings) :f_INIT))
            (:jm_flush _fileOutputStream))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_INIT) _e)))))))

(set jproto @{:jm_init jm_init :jm_write jm_write})


