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
# package org.allbinary.logic.io.path

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- FilePathData/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/io/file/FilePathData" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))

# Java class AbPathData
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getExtensionIndex nil)
(var jm_getExtensionWithDot nil)
(var jm_getExtension nil)
(var jm_getNameFromPath nil)
(var jm_removeNameFromPath nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AbPathData" :f_EXTENSION_SEP nil :f_SEPARATORCHAR 0 :f_SEPARATOR nil} jproto))
    (put this :f_EXTENSION_SEP ((CommonSeps/jm_getInstance) :f_PERIOD))
    (put this :f_SEPARATORCHAR (get "/" 0))
    (put this :f_SEPARATOR ((CommonSeps/jm_getInstance) :f_FORWARD_SLASH))
    this))
    
(set jm_getExtensionIndex (fn jm_getExtensionIndex [this _filePath]
    (label jreturn
        (var _indexOfFileExtensionDelmiter (JR/lastIndexOf _filePath (this :f_EXTENSION_SEP)))
        (var _indexOfLatDelimiter (JR/lastIndexOf _filePath (this :f_SEPARATORCHAR)))
        (if (< _indexOfFileExtensionDelmiter 0)
            (do
            (return jreturn (JR/i32 (- 1)))))
        (if (< _indexOfFileExtensionDelmiter _indexOfLatDelimiter)
            (do
            (return jreturn (JR/i32 (- 1)))))
        (return jreturn _indexOfFileExtensionDelmiter))))
    
(set jm_getExtensionWithDot (fn jm_getExtensionWithDot [this _filePath]
    (label jreturn
        (var _indexOfFileExtensionDelmiter (:jm_getExtensionIndex this _filePath))
        (var _extension ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
        (if (>= _indexOfFileExtensionDelmiter 0)
            (do
            (set _extension (JR/substring _filePath _indexOfFileExtensionDelmiter))))
        (return jreturn _extension))))
    
(set jm_getExtension (fn jm_getExtension [this _filePath]
    (label jreturn
        (var _indexOfFileExtensionDelmiter (:jm_getExtensionIndex this _filePath))
        (var _extension ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
        (if (>= _indexOfFileExtensionDelmiter 0)
            (do
            (set _extension (JR/substring _filePath (JR/i32 (+ _indexOfFileExtensionDelmiter 1))))))
        (return jreturn _extension))))
    
(set jm_getNameFromPath (fn jm_getNameFromPath [this _path]
    (label jreturn
        (var _endIndex (JR/lastIndexOf _path (this :f_SEPARATORCHAR)))
        (if (< _endIndex 0)
            (do
            (set _endIndex (JR/lastIndexOf _path ((FilePathData/jm_getInstance) :f_SEPARATORCHAR)))))
        (if (< _endIndex 0)
            (do
            (return jreturn _path)))
        (if (= (length _path) (JR/i32 (+ _endIndex 1)))
            (do
            (var _categoryName (JR/substring _path 0 _endIndex))
            (return jreturn (:jm_getNameFromPath this _categoryName)))
            (do
            (var _categoryName (JR/substring _path (JR/i32 (+ _endIndex 1))))
            (return jreturn _categoryName))))))
    
(set jm_removeNameFromPath (fn jm_removeNameFromPath [this _path]
    (label jreturn
        (var _endIndex (JR/lastIndexOf _path (this :f_SEPARATORCHAR)))
        (if (< _endIndex 0)
            (do
            (set _endIndex (JR/lastIndexOf _path ((FilePathData/jm_getInstance) :f_SEPARATORCHAR)))))
        (if (< _endIndex 0)
            (do
            (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING))))
        (if (= (length _path) (JR/i32 (+ _endIndex 1)))
            (do
            (return jreturn (:jm_removeNameFromPath this (JR/substring _path 0 (JR/i32 (- _endIndex 1))))))
            (do
            (var _pathWithoutName (JR/substring _path 0 _endIndex))
            (return jreturn _pathWithoutName))))))

(set jproto @{:jm_getExtensionIndex jm_getExtensionIndex :jm_getExtensionWithDot jm_getExtensionWithDot :jm_getExtension jm_getExtension :jm_getNameFromPath jm_getNameFromPath :jm_removeNameFromPath jm_removeNameFromPath})


