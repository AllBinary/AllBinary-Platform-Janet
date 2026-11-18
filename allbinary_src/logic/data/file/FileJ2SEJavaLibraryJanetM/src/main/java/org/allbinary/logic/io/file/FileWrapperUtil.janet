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
(import ../../../../../java/io/File :as File)
(defn- PreLogUtil/jm_putSE [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_putSE" args))
(defn- AbFile/jnew_1 [& args] (JR/call jfile "./AbFile" "jnew_1" args))
(defn- AbFile/jstatic_NULL_FILE [& args] (JR/call jfile "./AbFile" "jstatic_NULL_FILE" args))

# Java class FileWrapperUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_wrapFiles nil)
(var jm_wrapFile nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "FileWrapperUtil"} jproto))
    this))

    
(set jm_wrapFiles (fn jm_wrapFiles [_files]
    (label jreturn
        (try
            (do
            (var _abFileArray (array/new-filled (length _files) nil))
            (do
                (var _index (JR/i32 (- (length _files) 1)))
                (while (>= _index 0)
                    (do
                (set (_abFileArray _index) (AbFile/jnew_1 (_files _index))))
                    (do (set _index (JR/i32 (- _index 1))))))
            (return jreturn _abFileArray))
            ([_e] (do
            (PreLogUtil/jm_putSE "Exception Wrapping Files" "FileWrapperUtil" "wrapFiles" _e)
            (return jreturn (array/new-filled 0 nil))))))))
    
(set jm_wrapFile (fn jm_wrapFile [_file]
    (label jreturn
        (try
            (do
            (return jreturn (AbFile/jnew_1 _file)))
            ([_e] (do
            (PreLogUtil/jm_putSE "Exception Wrapping File" "FileWrapperUtil" "wrapFile" _e)
            (return jreturn (AbFile/jstatic_NULL_FILE))))))))

(set jproto @{})


