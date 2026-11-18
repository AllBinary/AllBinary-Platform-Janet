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
(defn- AbFile/jm_createAbFileFromRawPath [& args] (JR/call jfile "./AbFile" "jm_createAbFileFromRawPath" args))
(defn- AbFile/jm_createAbFileWithChild [& args] (JR/call jfile "./AbFile" "jm_createAbFileWithChild" args))
(defn- AbFile/jm_createAbFile [& args] (JR/call jfile "./AbFile" "jm_createAbFile" args))

# Java class FileFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance_0 nil)
(var jm_getInstance_1 nil)
(var jm_getInstance_2 nil)
(var jm_isFile nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "FileFactory"} jproto))
    this))

    
(set jm_getInstance_0 (fn jm_getInstance_0 []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getInstance_1 (fn jm_getInstance_1 [this _filePath]
    (label jreturn
        (return jreturn (AbFile/jm_createAbFileFromRawPath _filePath)))))
    
(set jm_getInstance_2 (fn jm_getInstance_2 [this _file _childFilePath]
    (label jreturn
        (return jreturn (AbFile/jm_createAbFileWithChild _file _childFilePath)))))
    
(set jm_isFile (fn jm_isFile [this _path]
    (label jreturn
        (var _file (AbFile/jm_createAbFile _path))
        (if (:jm_exists _file)
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))

(set jproto @{:jm_getInstance_1 jm_getInstance_1 :jm_getInstance_2 jm_getInstance_2 :jm_isFile jm_isFile})


