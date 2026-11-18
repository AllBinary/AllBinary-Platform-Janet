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
# package org.allbinary.logic.io.file

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../java/io/File :as File)
(import ../../../../../java/io/FileFilter :as FileFilter)
(import ../../../../../java/io/FilenameFilter :as FilenameFilter)
(import ../../../../../java/io/IOException :as IOException)
(import ../../../../../java/net/URI :as URI)
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- AbPath/jnew_2 [& args] (JR/call jfile "../../../../../org/allbinary/logic/io/path/AbPath" "jnew_2" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class AbFile
(var jproto nil)
(var jcell_NULL_FILE :jnone)
(var jstatic_NULL_FILE nil)
(var jsetstatic_NULL_FILE nil)
(var jnew_1 nil)
(var jm_createAbFileWithChild nil)
(var jm_createAbFile nil)
(var jm_createAbFilePathAndName nil)
(var jm_createAbFileFromAbPath nil)
(var jm_createAbFileFromRawPath nil)
(var jm_getFile nil)
(var jm_getName nil)
(var jm_getParent nil)
(var jm_getParentFile nil)
(var jm_getPath nil)
(var jm_isAbsolute nil)
(var jm_getAbsolutePath nil)
(var jm_getAbsoluteFile nil)
(var jm_getCanonicalPath nil)
(var jm_getCanonicalFile nil)
(var jm_toURI nil)
(var jm_canRead nil)
(var jm_canWrite nil)
(var jm_exists nil)
(var jm_isDirectory nil)
(var jm_isFile nil)
(var jm_isHidden nil)
(var jm_lastModified nil)
(var jm_length nil)
(var jm_createNewFile nil)
(var jm_delete nil)
(var jm_deleteOnExit nil)
(var jm_list nil)
(var jm_listWithFilter nil)
(var jm_listFiles nil)
(var jm_listFilesFileNameFilter nil)
(var jm_listFilesFileFilter nil)
(var jm_mkdir nil)
(var jm_mkdirs nil)
(var jm_renameTo nil)
(var jm_setLastModified nil)
(var jm_setReadOnly nil)
(var jm_setWritable_2 nil)
(var jm_setWritable_1 nil)
(var jm_setReadable_2 nil)
(var jm_setReadable_1 nil)
(var jm_setExecutable_2 nil)
(var jm_setExecutable_1 nil)
(var jm_canExecute nil)
(var jm_getTotalSpace nil)
(var jm_getFreeSpace nil)
(var jm_getUsableSpace nil)
(var jm_compareTo nil)
(var jm_equals nil)
(var jm_hashCode nil)
(var jm_toString nil)

(set jstatic_NULL_FILE (fn jstatic_NULL_FILE []
  (when (= jcell_NULL_FILE :jnone) (set jcell_NULL_FILE (jm_createAbFileFromRawPath ((StringUtil/jm_getInstance) :f_EMPTY_STRING))))
  jcell_NULL_FILE))
(set jsetstatic_NULL_FILE (fn jsetstatic_NULL_FILE [value] (set jcell_NULL_FILE value)))

    
(set jm_createAbFileWithChild (fn jm_createAbFileWithChild [_file _childPathName]
    (label jreturn
        (return jreturn (jnew_1 (File/jnew_2 (:jm_getFile _file) _childPathName))))))
    
(set jm_createAbFile (fn jm_createAbFile [_filePath]
    (label jreturn
        (return jreturn (jnew_1 (File/jnew_1 (:jm_toFileSystemString (AbPath/jnew_2 _filePath ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))))))
    
(set jm_createAbFilePathAndName (fn jm_createAbFilePathAndName [_filePath _fileName]
    (label jreturn
        (return jreturn (jnew_1 (File/jnew_2 (:jm_toFileSystemString (AbPath/jnew_2 _filePath ((StringUtil/jm_getInstance) :f_EMPTY_STRING))) _fileName))))))
    
(set jm_createAbFileFromAbPath (fn jm_createAbFileFromAbPath [_abPath]
    (label jreturn
        (return jreturn (jnew_1 (File/jnew_1 (:jm_toFileSystemString _abPath)))))))
    
(set jm_createAbFileFromRawPath (fn jm_createAbFileFromRawPath [_filePath]
    (label jreturn
        (return jreturn (jnew_1 (File/jnew_1 _filePath))))))
    
(set jnew_1 (fn jnew_1 [_file]
    (var this (table/setproto @{:jclass "AbFile" :f_file nil} jproto))
    
        (set (this :f_file) _file)
    this))
    
(set jm_getFile (fn jm_getFile [this]
    (label jreturn
        (return jreturn (this :f_file)))))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (:jm_getName (this :f_file))))))
    
(set jm_getParent (fn jm_getParent [this]
    (label jreturn
        (return jreturn (:jm_getParent (this :f_file))))))
    
(set jm_getParentFile (fn jm_getParentFile [this]
    (label jreturn
        (return jreturn (:jm_getParentFile (this :f_file))))))
    
(set jm_getPath (fn jm_getPath [this]
    (label jreturn
        (return jreturn (:jm_getPath (this :f_file))))))
    
(set jm_isAbsolute (fn jm_isAbsolute [this]
    (label jreturn
        (return jreturn (:jm_isAbsolute (this :f_file))))))
    
(set jm_getAbsolutePath (fn jm_getAbsolutePath [this]
    (label jreturn
        (return jreturn (:jm_getAbsolutePath (this :f_file))))))
    
(set jm_getAbsoluteFile (fn jm_getAbsoluteFile [this]
    (label jreturn
        (return jreturn (:jm_getAbsoluteFile (this :f_file))))))
    
(set jm_getCanonicalPath (fn jm_getCanonicalPath [this]
    (label jreturn
        (return jreturn (:jm_getCanonicalPath (this :f_file))))))
    
(set jm_getCanonicalFile (fn jm_getCanonicalFile [this]
    (label jreturn
        (return jreturn (:jm_getCanonicalFile (this :f_file))))))
    
(set jm_toURI (fn jm_toURI [this]
    (label jreturn
        (return jreturn (:jm_toURI (this :f_file))))))
    
(set jm_canRead (fn jm_canRead [this]
    (label jreturn
        (return jreturn (:jm_canRead (this :f_file))))))
    
(set jm_canWrite (fn jm_canWrite [this]
    (label jreturn
        (return jreturn (:jm_canWrite (this :f_file))))))
    
(set jm_exists (fn jm_exists [this]
    (label jreturn
        (return jreturn (:jm_exists (this :f_file))))))
    
(set jm_isDirectory (fn jm_isDirectory [this]
    (label jreturn
        (return jreturn (:jm_isDirectory (this :f_file))))))
    
(set jm_isFile (fn jm_isFile [this]
    (label jreturn
        (return jreturn (:jm_isFile (this :f_file))))))
    
(set jm_isHidden (fn jm_isHidden [this]
    (label jreturn
        (return jreturn (:jm_isHidden (this :f_file))))))
    
(set jm_lastModified (fn jm_lastModified [this]
    (label jreturn
        (return jreturn (:jm_lastModified (this :f_file))))))
    
(set jm_length (fn jm_length [this]
    (label jreturn
        (return jreturn (:jm_length (this :f_file))))))
    
(set jm_createNewFile (fn jm_createNewFile [this]
    (label jreturn
        (return jreturn (:jm_createNewFile (this :f_file))))))
    
(set jm_delete (fn jm_delete [this]
    (label jreturn
        (return jreturn (:jm_delete (this :f_file))))))
    
(set jm_deleteOnExit (fn jm_deleteOnExit [this]
        (:jm_deleteOnExit (this :f_file))))
    
(set jm_list (fn jm_list [this]
    (label jreturn
        (return jreturn (:jm_list (this :f_file))))))
    
(set jm_listWithFilter (fn jm_listWithFilter [this _filter]
    (label jreturn
        (return jreturn (:jm_list (this :f_file) _filter)))))
    
(set jm_listFiles (fn jm_listFiles [this]
    (label jreturn
        (return jreturn (:jm_listFiles (this :f_file))))))
    
(set jm_listFilesFileNameFilter (fn jm_listFilesFileNameFilter [this _filter]
    (label jreturn
        (return jreturn (:jm_listFiles (this :f_file) _filter)))))
    
(set jm_listFilesFileFilter (fn jm_listFilesFileFilter [this _filter]
    (label jreturn
        (return jreturn (:jm_listFiles (this :f_file) _filter)))))
    
(set jm_mkdir (fn jm_mkdir [this]
    (label jreturn
        (return jreturn (:jm_mkdir (this :f_file))))))
    
(set jm_mkdirs (fn jm_mkdirs [this]
    (label jreturn
        (return jreturn (:jm_mkdirs (this :f_file))))))
    
(set jm_renameTo (fn jm_renameTo [this _dest]
    (label jreturn
        (return jreturn (:jm_renameTo (this :f_file) (:jm_getFile _dest))))))
    
(set jm_setLastModified (fn jm_setLastModified [this _time]
    (label jreturn
        (return jreturn (:jm_setLastModified (this :f_file) _time)))))
    
(set jm_setReadOnly (fn jm_setReadOnly [this]
    (label jreturn
        (return jreturn (:jm_setReadOnly (this :f_file))))))
    
(set jm_setWritable_2 (fn jm_setWritable_2 [this _writable _ownerOnly]
    (label jreturn
        (return jreturn (:jm_setExecutable_2 (this :f_file) _writable _ownerOnly)))))
    
(set jm_setWritable_1 (fn jm_setWritable_1 [this _writable]
    (label jreturn
        (return jreturn (:jm_setWritable_1 (this :f_file) _writable)))))
    
(set jm_setReadable_2 (fn jm_setReadable_2 [this _readable _ownerOnly]
    (label jreturn
        (return jreturn (:jm_setReadable_2 (this :f_file) _readable _ownerOnly)))))
    
(set jm_setReadable_1 (fn jm_setReadable_1 [this _readable]
    (label jreturn
        (return jreturn (:jm_setReadable_1 (this :f_file) _readable)))))
    
(set jm_setExecutable_2 (fn jm_setExecutable_2 [this _executable _ownerOnly]
    (label jreturn
        (return jreturn (:jm_setExecutable_2 (this :f_file) _executable _ownerOnly)))))
    
(set jm_setExecutable_1 (fn jm_setExecutable_1 [this _executable]
    (label jreturn
        (return jreturn (:jm_setExecutable_1 (this :f_file) _executable)))))
    
(set jm_canExecute (fn jm_canExecute [this]
    (label jreturn
        (return jreturn (:jm_canExecute (this :f_file))))))
    
(set jm_getTotalSpace (fn jm_getTotalSpace [this]
    (label jreturn
        (return jreturn (:jm_getTotalSpace (this :f_file))))))
    
(set jm_getFreeSpace (fn jm_getFreeSpace [this]
    (label jreturn
        (return jreturn (:jm_getFreeSpace (this :f_file))))))
    
(set jm_getUsableSpace (fn jm_getUsableSpace [this]
    (label jreturn
        (return jreturn (:jm_getUsableSpace (this :f_file))))))
    
(set jm_compareTo (fn jm_compareTo [this _pathname]
    (label jreturn
        (return jreturn (:jm_compareTo (this :f_file) _pathname)))))
    
(set jm_equals (fn jm_equals [this _obj]
    (label jreturn
        (return jreturn (:jm_equalsNotstring (TsUtil/jm_getInstance) (this :f_file) _obj)))))
    
(set jm_hashCode (fn jm_hashCode [this]
    (label jreturn
        (return jreturn (:jm_hashCode (this :f_file))))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_toString (this :f_file))))))

(set jproto @{:jm_getFile jm_getFile :jm_getName jm_getName :jm_getParent jm_getParent :jm_getParentFile jm_getParentFile :jm_getPath jm_getPath :jm_isAbsolute jm_isAbsolute :jm_getAbsolutePath jm_getAbsolutePath :jm_getAbsoluteFile jm_getAbsoluteFile :jm_getCanonicalPath jm_getCanonicalPath :jm_getCanonicalFile jm_getCanonicalFile :jm_toURI jm_toURI :jm_canRead jm_canRead :jm_canWrite jm_canWrite :jm_exists jm_exists :jm_isDirectory jm_isDirectory :jm_isFile jm_isFile :jm_isHidden jm_isHidden :jm_lastModified jm_lastModified :jm_length jm_length :jm_createNewFile jm_createNewFile :jm_delete jm_delete :jm_deleteOnExit jm_deleteOnExit :jm_list jm_list :jm_listWithFilter jm_listWithFilter :jm_listFiles jm_listFiles :jm_listFilesFileNameFilter jm_listFilesFileNameFilter :jm_listFilesFileFilter jm_listFilesFileFilter :jm_mkdir jm_mkdir :jm_mkdirs jm_mkdirs :jm_renameTo jm_renameTo :jm_setLastModified jm_setLastModified :jm_setReadOnly jm_setReadOnly :jm_setWritable_2 jm_setWritable_2 :jm_setWritable_1 jm_setWritable_1 :jm_setReadable_2 jm_setReadable_2 :jm_setReadable_1 jm_setReadable_1 :jm_setExecutable_2 jm_setExecutable_2 :jm_setExecutable_1 jm_setExecutable_1 :jm_canExecute jm_canExecute :jm_getTotalSpace jm_getTotalSpace :jm_getFreeSpace jm_getFreeSpace :jm_getUsableSpace jm_getUsableSpace :jm_compareTo jm_compareTo :jm_equals jm_equals :jm_hashCode jm_hashCode :jm_toString jm_toString})


