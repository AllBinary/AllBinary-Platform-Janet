# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.logic.io.file

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../java/io/File :as File)
(import ../../../../../java/io/FileInputStream :as FileInputStream)
(import ../../../../../java/io/InputStream :as InputStream)
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

#FileJ2SE should be the same as J2SEForJ2ME
# Java class AbFileSystem
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_isDirectoryOrFile nil)
(var jm_isDirectory nil)
(var jm_getFilesAsStringArrayForPath nil)
(var jm_readAsString_1 nil)
(var jm_readAsString_2 nil)
(var jm_close nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AbFileSystem" :f_logUtil nil :f_commonStrings nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_isDirectoryOrFile (fn jm_isDirectoryOrFile [this _path]
    (label jreturn
        (var _file (File/jnew_1 _path))
        (return jreturn (or (:jm_isDirectory _file) (:jm_isFile _file))))))
    
(set jm_isDirectory (fn jm_isDirectory [this _path]
    (label jreturn
        (return jreturn (:jm_isDirectory (File/jnew_1 _path))))))
    
(set jm_getFilesAsStringArrayForPath (fn jm_getFilesAsStringArrayForPath [this _currentDirPath]
    (label jreturn
        (var _file (File/jnew_1 _currentDirPath))
        (if (:jm_exists _file)
            (do
            (return jreturn (:jm_list _file)))
            (do
            (return jreturn (:jm_getArrayInstance (StringUtil/jm_getInstance))))))))
    
(set jm_readAsString_1 (fn jm_readAsString_1 [this _fileName]
    (label jreturn
        (var _bytes (array/new-filled 1000000 0))
        (return jreturn (:jm_readAsString_2 this _fileName _bytes)))))
    
(set jm_readAsString_2 (fn jm_readAsString_2 [this _fileName _bytes]
    (label jreturn
        (var _closeable ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
        (defer (do
            (:jm_close this _closeable))
            (try
            (do
            (var _idFile (FileInputStream/jnew_1 _fileName))
            (set _closeable _idFile)
            (var _size (:jm_read _idFile _bytes))
            (if (> _size 0)
                (do
                (return jreturn (JR/fromChars _bytes 0 _size)))))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this "readAsString" _e)))))
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))
    
(set jm_close (fn jm_close [this _closeable]
    (label jreturn
        (try
            (do
            (if (not (nil? _closeable))
                (do
                (var _inputStream _closeable)
                (:jm_close _inputStream)))
            (return jreturn true))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_CLOSE) _e)
            (return jreturn false)))))))

(set jproto @{:jm_isDirectoryOrFile jm_isDirectoryOrFile :jm_isDirectory jm_isDirectory :jm_getFilesAsStringArrayForPath jm_getFilesAsStringArrayForPath :jm_readAsString_1 jm_readAsString_1 :jm_readAsString_2 jm_readAsString_2 :jm_close jm_close})


