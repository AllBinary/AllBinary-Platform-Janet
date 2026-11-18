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
# package org.allbinary.logic.io

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- AbFile/jm_createAbFileFromAbPath [& args] (JR/call jfile "../../../../org/allbinary/logic/io/file/AbFile" "jm_createAbFileFromAbPath" args))
(defn- AbPath/jnew_2 [& args] (JR/call jfile "../../../../org/allbinary/logic/io/path/AbPath" "jnew_2" args))
(defn- AbFileInputStream/jm_createFromAbFile [& args] (JR/call jfile "./AbFileInputStream" "jm_createFromAbFile" args))
(defn- AbFileOutputStream/jm_createFromAbFile [& args] (JR/call jfile "./AbFileOutputStream" "jm_createFromAbFile" args))

# Java class FileStreamFactory
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getFileInputStreamInstance nil)
(var jm_getFileOutputStreamInstance nil)
(var jm_delete nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_SINGLETON) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_SINGLETON (jnew_0))))
        (return jreturn (jstatic_SINGLETON)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "FileStreamFactory"} jproto))
    this))
    
(set jm_getFileInputStreamInstance (fn jm_getFileInputStreamInstance [this _path _fileName]
    (label jreturn
        (var _FILEABPATH (AbPath/jnew_2 _path _fileName))
        (var _file (AbFile/jm_createAbFileFromAbPath _FILEABPATH))
        (return jreturn (AbFileInputStream/jm_createFromAbFile _file)))))
    
(set jm_getFileOutputStreamInstance (fn jm_getFileOutputStreamInstance [this _path _fileName]
    (label jreturn
        (var _FILEABPATH (AbPath/jnew_2 _path _fileName))
        (var _file (AbFile/jm_createAbFileFromAbPath _FILEABPATH))
        (if (:jm_exists _file)
            (do
            (:jm_delete _file)
            (:jm_createNewFile _file)))
        (return jreturn (AbFileOutputStream/jm_createFromAbFile _file)))))
    
(set jm_delete (fn jm_delete [this _path _fileName]
        (var _FILEABPATH (AbPath/jnew_2 _path _fileName))
        (var _file (AbFile/jm_createAbFileFromAbPath _FILEABPATH))
        (:jm_delete _file)))

(set jproto @{:jm_getFileInputStreamInstance jm_getFileInputStreamInstance :jm_getFileOutputStreamInstance jm_getFileOutputStreamInstance :jm_delete jm_delete})


