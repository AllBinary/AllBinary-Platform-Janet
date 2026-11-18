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
(defn- StringValidationUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringValidationUtil" "jm_getInstance" args))
(defn- AbPathData/jm_getInstance [& args] (JR/call jfile "./AbPathData" "jm_getInstance" args))
(defn- AbPath/jnew_2 [& args] (JR/call jfile "./AbPath" "jnew_2" args))
(defn- AbPath/jm_createAbPath [& args] (JR/call jfile "./AbPath" "jm_createAbPath" args))

#Used to correct user input for paths
# Java class PathUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getExtensionWithAbFilePath nil)
(var jm_getExtensionWithAbPath nil)
(var jm_getWithoutExtensionWithAbFilePath nil)
(var jm_getWithoutExtensionWithAbPath nil)
(var jm_getWithoutExtension nil)
(var jm_isValid nil)
(var jm_isValidStart nil)
(var jm_isValidEnd nil)
(var jm_adjustStart nil)
(var jm_adjustEnd nil)
(var jm_adjust nil)
(var jm_removeNameFromPath nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PathUtil" :f_abPathData nil :f_filePathData nil} jproto))
    (put this :f_abPathData (AbPathData/jm_getInstance))
    (put this :f_filePathData (FilePathData/jm_getInstance))
    this))
    
(set jm_getExtensionWithAbFilePath (fn jm_getExtensionWithAbFilePath [this _abFilePath]
    (label jreturn
        (return jreturn (:jm_getExtension (this :f_abPathData) (:jm_toString _abFilePath))))))
    
(set jm_getExtensionWithAbPath (fn jm_getExtensionWithAbPath [this _abPath]
    (label jreturn
        (return jreturn (:jm_getExtension (this :f_abPathData) (:jm_toString _abPath))))))
    
(set jm_getWithoutExtensionWithAbFilePath (fn jm_getWithoutExtensionWithAbFilePath [this _abFilePath]
    (label jreturn
        (return jreturn (:jm_getWithoutExtension this (:jm_toString _abFilePath))))))
    
(set jm_getWithoutExtensionWithAbPath (fn jm_getWithoutExtensionWithAbPath [this _abPath]
    (label jreturn
        (return jreturn (:jm_getWithoutExtension this (:jm_toString _abPath))))))
    
(set jm_getWithoutExtension (fn jm_getWithoutExtension [this _filePath]
    (label jreturn
        (var _indexOfFileExtensionDelmiter (:jm_getExtensionIndex (this :f_abPathData) _filePath))
        (var _pathWithoutExtension _filePath)
        (if (>= _indexOfFileExtensionDelmiter 0)
            (do
            (set _pathWithoutExtension (JR/substring _filePath 0 _indexOfFileExtensionDelmiter))))
        (return jreturn _pathWithoutExtension))))
    
(set jm_isValid (fn jm_isValid [this _path]
    (label jreturn
        (if (:jm_isValidStart this _path)
            (do
            (if (:jm_isValidEnd this _path)
                (do
                (return jreturn true)))))
        (return jreturn false))))
    
(set jm_isValidStart (fn jm_isValidStart [this _path]
    (label jreturn
        (if (or (= (get _path 0) ((this :f_abPathData) :f_SEPARATORCHAR)) (= (get _path 0) (get "." 0)))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_isValidEnd (fn jm_isValidEnd [this _path]
    (label jreturn
        (var _stringValidationUtil (StringValidationUtil/jm_getInstance))
        (if (:jm_isEmpty _stringValidationUtil _path)
            (do
            (return jreturn false)))
        (if (= (get _path (JR/i32 (- (length _path) 1))) ((this :f_abPathData) :f_SEPARATORCHAR))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_adjustStart (fn jm_adjustStart [this _path]
    (var _path _path)
    (label jreturn
        (if (not (:jm_isValidStart this _path))
            (do
            (set _path (string (JR/str ((this :f_abPathData) :f_SEPARATOR)) _path))))
        (return jreturn _path))))
    
(set jm_adjustEnd (fn jm_adjustEnd [this _path]
    (var _path _path)
    (label jreturn
        (if (not (:jm_isValidEnd this _path))
            (do
            (set _path (string _path (JR/str ((this :f_abPathData) :f_SEPARATOR))))))
        (return jreturn _path))))
    
(set jm_adjust (fn jm_adjust [this _path]
    (var _path _path)
    (label jreturn
        (var _stringValidationUtil (StringValidationUtil/jm_getInstance))
        (if (:jm_isEmpty _stringValidationUtil _path)
            (do
            (return jreturn ((this :f_abPathData) :f_SEPARATOR))))
        (if (>= (JR/indexOf _path "\\") 0)
            (do
            (set _path (JR/replace _path (get "\\" 0) ((this :f_abPathData) :f_SEPARATORCHAR)))))
        (return jreturn _path))))
    
(set jm_removeNameFromPath (fn jm_removeNameFromPath [this _path]
    (label jreturn
        (var _endIndex (JR/lastIndexOf _path ((this :f_abPathData) :f_SEPARATOR)))
        (if (< _endIndex 0)
            (do
            (set _endIndex (JR/lastIndexOf _path ((this :f_filePathData) :f_SEPARATORCHAR)))))
        (if (< _endIndex 0)
            (do
            (return jreturn (AbPath/jm_createAbPath))))
        (if (= (length _path) (JR/i32 (+ _endIndex 1)))
            (do
            (return jreturn (:jm_removeNameFromPath this (JR/substring _path 0 (JR/i32 (- _endIndex 1))))))
            (do
            (var _pathWithoutName (JR/substring _path 0 _endIndex))
            (return jreturn (AbPath/jnew_2 _pathWithoutName ((StringUtil/jm_getInstance) :f_EMPTY_STRING))))))))

(set jproto @{:jm_getExtensionWithAbFilePath jm_getExtensionWithAbFilePath :jm_getExtensionWithAbPath jm_getExtensionWithAbPath :jm_getWithoutExtensionWithAbFilePath jm_getWithoutExtensionWithAbFilePath :jm_getWithoutExtensionWithAbPath jm_getWithoutExtensionWithAbPath :jm_getWithoutExtension jm_getWithoutExtension :jm_isValid jm_isValid :jm_isValidStart jm_isValidStart :jm_isValidEnd jm_isValidEnd :jm_adjustStart jm_adjustStart :jm_adjustEnd jm_adjustEnd :jm_adjust jm_adjust :jm_removeNameFromPath jm_removeNameFromPath})


