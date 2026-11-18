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
(defn- FilePathUtil/jm_adjust [& args] (JR/call jfile "../../../../../org/allbinary/logic/io/file/FilePathUtil" "jm_adjust" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- StringValidationUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringValidationUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- AbPathData/jm_getInstance [& args] (JR/call jfile "./AbPathData" "jm_getInstance" args))
(defn- PathUtil/jm_getInstance [& args] (JR/call jfile "./PathUtil" "jm_getInstance" args))

# Java class AbPath
(var jproto nil)
(var jcell_NETWORK_SEP :jnone)
(var jstatic_NETWORK_SEP nil)
(var jsetstatic_NETWORK_SEP nil)
(var jnew_2 nil)
(var jm_createAbPath nil)
(var jm_init nil)
(var jm_getSchema nil)
(var jm_hasSchema nil)
(var jm_getPathFromPath nil)
(var jm_setName nil)
(var jm_getName nil)
(var jm_toString nil)
(var jm_toFileSystemString nil)
(var jm_getPath nil)
(var jm_setPath nil)

(set jstatic_NETWORK_SEP (fn jstatic_NETWORK_SEP []
  (when (= jcell_NETWORK_SEP :jnone) (set jcell_NETWORK_SEP ":/"))
  jcell_NETWORK_SEP))
(set jsetstatic_NETWORK_SEP (fn jsetstatic_NETWORK_SEP [value] (set jcell_NETWORK_SEP value)))

    
(set jm_createAbPath (fn jm_createAbPath []
    (label jreturn
        (try
            (do
            (var _EMPTY_STRING ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
            (return jreturn (jnew_2 _EMPTY_STRING _EMPTY_STRING)))
            ([_ex] (do
            (error (JR/newException "RuntimeException"))))))))
    
(set jnew_2 (fn jnew_2 [_aPath _name]
    (var this (table/setproto @{:jclass "AbPath" :f_commonSeps nil :f_abPathData nil :f_abPathUtil nil :f_EMPTY_STRING nil :f_schema nil :f_path nil :f_nameP nil :f_hasSchemaP false :f_numberOfSeps 0} jproto))
    (put this :f_commonSeps (CommonSeps/jm_getInstance))
    (put this :f_abPathData (AbPathData/jm_getInstance))
    (put this :f_abPathUtil (PathUtil/jm_getInstance))
    (put this :f_EMPTY_STRING ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_schema (this :f_EMPTY_STRING))
    (put this :f_path (this :f_EMPTY_STRING))
    (put this :f_nameP (this :f_EMPTY_STRING))
    (put this :f_hasSchemaP false)
    (put this :f_numberOfSeps 0)
        (var _stringValidationUtil (StringValidationUtil/jm_getInstance))
        (if (not (:jm_isEmpty _stringValidationUtil _aPath))
            (do
            (set (this :f_schema) (:jm_getSchema this _aPath))
            (set (this :f_nameP) _name)
            (set (this :f_path) (:jm_adjustEnd (this :f_abPathUtil) (:jm_adjust (this :f_abPathUtil) (:jm_getPathFromPath this _aPath)))))
            (do
            (:jm_init this)
            (if (not (:jm_isEmpty _stringValidationUtil _name))
                (do
                (set (this :f_nameP) _name)))))
    this))
    
(set jm_init (fn jm_init [this]
        (set (this :f_schema) (this :f_EMPTY_STRING))
        (:jm_setPath this ((this :f_abPathData) :f_SEPARATOR))
        (set (this :f_nameP) (this :f_EMPTY_STRING))))
    
(set jm_getSchema (fn jm_getSchema [this _aPath]
    (label jreturn
        (var _beginIndex (JR/indexOf _aPath ((this :f_commonSeps) :f_COLON)))
        (if (>= _beginIndex 0)
            (do
            (set (this :f_hasSchemaP) true)
            (return jreturn (JR/substring _aPath 0 _beginIndex))))
        (set (this :f_hasSchemaP) false)
        (return jreturn (this :f_EMPTY_STRING)))))
    
(set jm_hasSchema (fn jm_hasSchema [this]
    (label jreturn
        (return jreturn (this :f_hasSchemaP)))))
    
(set jm_getPathFromPath (fn jm_getPathFromPath [this _aPath]
    (label jreturn
        (var _filePathData (FilePathData/jm_getInstance))
        (var _tempPath _aPath)
        (if (not (:jm_hasSchema this))
            (do
            (set _tempPath (:jm_adjustStart (this :f_abPathUtil) _tempPath)))
            (do
            (var _beginIndex (JR/indexOf _tempPath ((this :f_commonSeps) :f_COLON)))
            (if (>= _beginIndex 0)
                (do
                (set _beginIndex (JR/i32 (+ _beginIndex 1)))
                (do
                    (while (or (= (get _tempPath _beginIndex) ((this :f_abPathData) :f_SEPARATORCHAR)) (= (get _tempPath _beginIndex) (_filePathData :f_SEPARATORCHAR)))
                        (do
                    (set _beginIndex (JR/i32 (+ _beginIndex 1)))
                    (set (this :f_numberOfSeps) (JR/i32 (+ (this :f_numberOfSeps) 1)))
                    (if (> (this :f_numberOfSeps) 2)
                        (do
                        (error (JR/newException "Exception" "Should Not Have More Than Two Seps")))))))
                (set _tempPath (JR/substring _tempPath _beginIndex (length _tempPath)))))))
        (return jreturn _tempPath))))
    
(set jm_setName (fn jm_setName [this _name]
        (set (this :f_nameP) _name)))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_nameP)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (if (:jm_hasSchema this)
            (do
            (:jm_append _stringBuffer (this :f_schema))
            (:jm_append _stringBuffer (jstatic_NETWORK_SEP))))
        (:jm_append _stringBuffer (:jm_getPath this))
        (:jm_append _stringBuffer (this :f_nameP))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_toFileSystemString (fn jm_toFileSystemString [this]
    (label jreturn
        (if (:jm_hasSchema this)
            (do
            (var _filePathData (FilePathData/jm_getInstance))
            (var _stringBuffer (StringMaker/jnew_0))
            (:jm_append _stringBuffer (this :f_schema))
            (:jm_append _stringBuffer ((this :f_commonSeps) :f_COLON))
            (:jm_append _stringBuffer (_filePathData :f_PATH_START))
            (:jm_append _stringBuffer (FilePathUtil/jm_adjust (:jm_getPath this)))
            (:jm_append _stringBuffer (this :f_nameP))
            (return jreturn (:jm_toString _stringBuffer)))
            (do
            (return jreturn (string (JR/str (FilePathUtil/jm_adjust (:jm_getPath this))) (this :f_nameP))))))))
    
(set jm_getPath (fn jm_getPath [this]
    (label jreturn
        (return jreturn (this :f_path)))))
    
(set jm_setPath (fn jm_setPath [this _path]
        (set (this :f_path) _path)))

(set jproto @{:jm_init jm_init :jm_getSchema jm_getSchema :jm_hasSchema jm_hasSchema :jm_getPathFromPath jm_getPathFromPath :jm_setName jm_setName :jm_getName jm_getName :jm_toString jm_toString :jm_toFileSystemString jm_toFileSystemString :jm_getPath jm_getPath :jm_setPath jm_setPath})


