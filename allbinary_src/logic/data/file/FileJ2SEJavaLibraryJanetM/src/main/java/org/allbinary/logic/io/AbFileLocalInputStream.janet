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
(defn- AbFileNativeUtil/jm_get [& args] (JR/call jfile "../../../../org/allbinary/logic/io/file/AbFileNativeUtil" "jm_get" args))
(import ./AbFileInputStream :as AbFileInputStream)

# Java class AbFileLocalInputStream
(var jproto nil)
(var jnew_1 nil)

    
(set jnew_1 (fn jnew_1 [_file]
    (var this (table/setproto @{:jclass "AbFileLocalInputStream"} jproto))
        (JR/superInit this (AbFileInputStream/jnew_1 (JR/className (AbFileNativeUtil/jm_get _file))))
    this))

(set jproto (table/setproto @{} AbFileInputStream/jproto))


