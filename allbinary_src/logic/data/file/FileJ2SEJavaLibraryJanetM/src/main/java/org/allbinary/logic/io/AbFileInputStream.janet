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
(import ../../../../java/io/File :as File)
(import ../../../../java/io/FileInputStream :as FileInputStream)
(import ../../../../java/io/FileNotFoundException :as FileNotFoundException)
(defn- AbFileNativeUtil/jm_get [& args] (JR/call jfile "../../../../org/allbinary/logic/io/file/AbFileNativeUtil" "jm_get" args))

# Java class AbFileInputStream
(var jproto nil)
(var jnew_1 nil)
(var jm_createFromAbFile nil)
(var jm_createFromFile nil)

    
(set jnew_1 (fn jnew_1 [_name]
    (var this (table/setproto @{:jclass "AbFileInputStream"} jproto))
        (JR/superInit this (FileInputStream/jnew_1 _name))
    this))
    
(set jm_createFromAbFile (fn jm_createFromAbFile [_file]
    (label jreturn
        (return jreturn (jnew_1 (JR/className (AbFileNativeUtil/jm_get _file)))))))
    
(set jm_createFromFile (fn jm_createFromFile [_file]
    (label jreturn
        (return jreturn (jnew_1 (:jm_getPath _file))))))

(set jproto (table/setproto @{} FileInputStream/jproto))


