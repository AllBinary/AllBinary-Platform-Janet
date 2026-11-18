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
(import ../../../../java/io/BufferedReader :as BufferedReader)
(import ../../../../java/io/BufferedWriter :as BufferedWriter)
(import ../../../../java/io/FileReader :as FileReader)
(import ../../../../java/io/FileWriter :as FileWriter)
(defn- AbFileNativeUtil/jm_get [& args] (JR/call jfile "../../../../org/allbinary/logic/io/file/AbFileNativeUtil" "jm_get" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class BufferedIOUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_copy nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BufferedIOUtil"} jproto))
    this))

    
(set jm_copy (fn jm_copy [_backupFile _backupFileBak]
        (var _line ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
        (var _tmpOut (BufferedWriter/jnew_1 (FileWriter/jnew_1 (AbFileNativeUtil/jm_get _backupFileBak))))
        (var _tmpIn (BufferedReader/jnew_1 (FileReader/jnew_1 (AbFileNativeUtil/jm_get _backupFile))))
        (do
            (while (:jm_ready _tmpIn)
                (do
            (set _line (:jm_readLine _tmpIn))
            (:jm_write _tmpOut _line 0 (length _line))
            (:jm_newLine _tmpOut))))
        (:jm_flush _tmpOut)))

(set jproto @{})


