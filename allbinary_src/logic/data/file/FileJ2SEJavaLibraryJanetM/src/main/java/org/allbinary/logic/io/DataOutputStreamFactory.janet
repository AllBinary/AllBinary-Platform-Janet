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
(defn- AbFileOutputStream/jm_createFromAbFile [& args] (JR/call jfile "./AbFileOutputStream" "jm_createFromAbFile" args))
(defn- AbDataOutputStream/jnew_1 [& args] (JR/call jfile "./AbDataOutputStream" "jnew_1" args))
(defn- FileStreamFactory/jm_getInstance_0 [& args] (JR/call jfile "./FileStreamFactory" "jm_getInstance_0" args))

# Java class DataOutputStreamFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance_0 nil)
(var jm_getInstanceForAbFile nil)
(var jm_getInstance_2 nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DataOutputStreamFactory"} jproto))
    this))

    
(set jm_getInstance_0 (fn jm_getInstance_0 []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getInstanceForAbFile (fn jm_getInstanceForAbFile [this _file]
    (label jreturn
        (var _idFileOutputStream (AbFileOutputStream/jm_createFromAbFile _file))
        (var _idOutData (AbDataOutputStream/jnew_1 _idFileOutputStream))
        (return jreturn _idOutData))))
    
(set jm_getInstance_2 (fn jm_getInstance_2 [this _filePath _fileName]
    (label jreturn
        (var _fileStreamFactory (FileStreamFactory/jm_getInstance_0))
        (var _fileOutputStream (:jm_getFileOutputStreamInstance _fileStreamFactory _filePath _fileName))
        (var _idOutData (AbDataOutputStream/jnew_1 _fileOutputStream))
        (return jreturn _idOutData))))

(set jproto @{:jm_getInstanceForAbFile jm_getInstanceForAbFile :jm_getInstance_2 jm_getInstance_2})


