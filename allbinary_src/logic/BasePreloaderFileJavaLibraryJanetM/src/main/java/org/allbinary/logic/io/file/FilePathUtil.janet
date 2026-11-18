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
# package org.allbinary.logic.io.file

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AbPathData/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/io/path/AbPathData" "jm_getInstance" args))
(defn- StringValidationUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringValidationUtil" "jm_getInstance" args))
(defn- FilePathData/jm_getInstance [& args] (JR/call jfile "./FilePathData" "jm_getInstance" args))

#Used to correct user input for paths
# Java class FilePathUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_adjust nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "FilePathUtil"} jproto))
    this))
    
(set jm_adjust (fn jm_adjust [_path]
    (var _path _path)
    (label jreturn
        (var _abPathData (AbPathData/jm_getInstance))
        (var _stringValidationUtil (StringValidationUtil/jm_getInstance))
        (var _filePathData (FilePathData/jm_getInstance))
        (if (:jm_isEmpty _stringValidationUtil _path)
            (do
            (return jreturn (_filePathData :f_PATH_START))))
        (set _path (JR/replace _path (_abPathData :f_SEPARATORCHAR) (_filePathData :f_SEPARATORCHAR)))
        (return jreturn _path))))

(set jproto @{})


