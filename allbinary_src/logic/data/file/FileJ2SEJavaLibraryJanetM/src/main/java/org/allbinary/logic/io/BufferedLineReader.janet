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
(import ../../../../java/io/FileReader :as FileReader)
(defn- AbFileNativeUtil/jm_get [& args] (JR/call jfile "../../../../org/allbinary/logic/io/file/AbFileNativeUtil" "jm_get" args))

# Java class BufferedLineReader
(var jproto nil)
(var jnew_1 nil)
(var jm_readUpToLines nil)
(var jm_readLine nil)
(var jm_ready nil)
(var jm_getSize nil)
(var jm_getCurrent nil)

    
(set jnew_1 (fn jnew_1 [_file]
    (var this (table/setproto @{:jclass "BufferedLineReader" :f_tmpIn nil} jproto))
    
        (set (this :f_tmpIn) (BufferedReader/jnew_1 (FileReader/jnew_1 (AbFileNativeUtil/jm_get _file))))
    this))
    
(set jm_readUpToLines (fn jm_readUpToLines [this _readAheadIndex]
    nil))
    
(set jm_readLine (fn jm_readLine [this]
    (label jreturn
        (return jreturn (:jm_readLine (this :f_tmpIn))))))
    
(set jm_ready (fn jm_ready [this]
    (label jreturn
        (return jreturn (:jm_ready (this :f_tmpIn))))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_getCurrent (fn jm_getCurrent [this]
    (label jreturn
        (return jreturn 0))))

(set jproto @{:jm_readUpToLines jm_readUpToLines :jm_readLine jm_readLine :jm_ready jm_ready :jm_getSize jm_getSize :jm_getCurrent jm_getCurrent})


