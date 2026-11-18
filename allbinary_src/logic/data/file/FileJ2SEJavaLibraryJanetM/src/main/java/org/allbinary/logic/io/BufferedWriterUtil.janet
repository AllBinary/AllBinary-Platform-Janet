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
(import ../../../../java/io/BufferedWriter :as BufferedWriter)
(import ../../../../java/io/FileWriter :as FileWriter)
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- AbFile/jm_createAbFile [& args] (JR/call jfile "../../../../org/allbinary/logic/io/file/AbFile" "jm_createAbFile" args))
(defn- AbFileNativeUtil/jm_get [& args] (JR/call jfile "../../../../org/allbinary/logic/io/file/AbFileNativeUtil" "jm_get" args))
(defn- AbPathData/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/io/path/AbPathData" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class BufferedWriterUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_overwrite_2 nil)
(var jm_overwrite_2 nil)
(var jm_write nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BufferedWriterUtil" :f_logUtil nil :f_commonStrings nil :f_commonLabels nil :f_REMOVING_OLD nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_commonLabels (CommonLabels/jm_getInstance))
    (put this :f_REMOVING_OLD "Remove old for overwriting: ")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_overwrite_2 (fn jm_overwrite_2 [this _path _data]
        (var _abFile (AbFile/jm_createAbFile _path))
        (if (:jm_exists _abFile)
            (do
            (:jm_putF (this :f_logUtil) (string (this :f_REMOVING_OLD) _path) this ((this :f_commonStrings) :f_CREATE))
            (:jm_delete _abFile))
            (do
            (var _name (:jm_removeNameFromPath (AbPathData/jm_getInstance) _path))
            (var _abFileDirectory (AbFile/jm_createAbFile _name))
            (if (:jm_exists _abFileDirectory)
                (do
                nil)
                (do
                (var _stringBuilder (StringMaker/jnew_0))
                (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (:jm_append _stringBuilder ((this :f_commonStrings) :f_CREATE)) ((this :f_commonLabels) :f_COLON_SEP)) _name)) this ((this :f_commonStrings) :f_CREATE))
                (var _result (:jm_mkdirs _abFileDirectory))
                (:jm_delete _stringBuilder 0 (:jm_length _stringBuilder))
                (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendboolean (:jm_append _stringBuilder ((this :f_commonLabels) :f_RESULT_)) _result)) this ((this :f_commonStrings) :f_CREATE))))))
        (:jm_write this _abFile _data)))
    
(set jm_overwrite_2 (fn jm_overwrite_2 [this _abFile _data]
        (if (:jm_exists _abFile)
            (do
            (:jm_putF (this :f_logUtil) (string (this :f_REMOVING_OLD) (JR/str (:jm_getPath _abFile))) this ((this :f_commonStrings) :f_CREATE))
            (:jm_delete _abFile))
            (do
            (var _name (:jm_removeNameFromPath (AbPathData/jm_getInstance) (:jm_getAbsolutePath _abFile)))
            (var _abFileDirectory (AbFile/jm_createAbFile _name))
            (if (:jm_exists _abFileDirectory)
                (do
                nil)
                (do
                (var _stringBuilder (StringMaker/jnew_0))
                (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (:jm_append _stringBuilder ((this :f_commonStrings) :f_CREATE)) ((this :f_commonLabels) :f_COLON_SEP)) _name)) this ((this :f_commonStrings) :f_CREATE))
                (var _result (:jm_mkdirs _abFileDirectory))
                (:jm_delete _stringBuilder 0 (:jm_length _stringBuilder))
                (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendboolean (:jm_append _stringBuilder ((this :f_commonLabels) :f_RESULT_)) _result)) this ((this :f_commonStrings) :f_CREATE))))))
        (:jm_write this _abFile _data)))
    
(set jm_write (fn jm_write [this _abFile _data]
        (var _fileOut (BufferedWriter/jnew_1 (FileWriter/jnew_1 (AbFileNativeUtil/jm_get _abFile))))
        (:jm_write _fileOut _data 0 (length _data))
        (:jm_newLine _fileOut)
        (:jm_flush _fileOut)))

(set jproto @{:jm_overwrite_2 jm_overwrite_2 :jm_overwrite_2 jm_overwrite_2 :jm_write jm_write})


