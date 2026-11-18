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
(import ../../../../java/io/FileNotFoundException :as FileNotFoundException)
(import ../../../../java/io/FileOutputStream :as FileOutputStream)

# Java class AbFileOutputStream
(var jproto nil)
(var jnew_2 nil)
(var jm_createFromAbFile nil)
(var jm_createFromAbFileAppend nil)
(var jm_createFromFilePath nil)
(var jm_createFromFilePathAppend nil)

    
(set jm_createFromAbFile (fn jm_createFromAbFile [_file]
    (label jreturn
        (return jreturn (jnew_2 (:jm_getPath _file) false)))))
    
(set jm_createFromAbFileAppend (fn jm_createFromAbFileAppend [_file _append]
    (label jreturn
        (return jreturn (jnew_2 (:jm_getPath _file) _append)))))
    
(set jm_createFromFilePath (fn jm_createFromFilePath [_name]
    (label jreturn
        (return jreturn (jnew_2 _name false)))))
    
(set jm_createFromFilePathAppend (fn jm_createFromFilePathAppend [_name _append]
    (label jreturn
        (return jreturn (jnew_2 _name _append)))))
    
(set jnew_2 (fn jnew_2 [_name _append]
    (var this (table/setproto @{:jclass "AbFileOutputStream"} jproto))
        (JR/superInit this (FileOutputStream/jnew_2 _name _append))
    this))

(set jproto (table/setproto @{} FileOutputStream/jproto))


