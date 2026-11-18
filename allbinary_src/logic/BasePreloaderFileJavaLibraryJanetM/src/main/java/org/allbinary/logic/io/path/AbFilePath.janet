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
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ./AbPath :as AbPath)
(defn- AbPathData/jm_getInstance [& args] (JR/call jfile "./AbPathData" "jm_getInstance" args))
(defn- PathUtil/jm_getInstance [& args] (JR/call jfile "./PathUtil" "jm_getInstance" args))

# Java class AbFilePath
(var jproto nil)
(var jnew_1 nil)

    
(set jnew_1 (fn jnew_1 [_aPath]
    (var this (table/setproto @{:jclass "AbFilePath"} jproto))
        (JR/superInit this (AbPath/jnew_2 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))
        (var _pathData (AbPathData/jm_getInstance))
        (var _abPathUtil (PathUtil/jm_getInstance))
        (set (this :f_schema) (:jm_getSchema this _aPath))
        (:jm_setName this (:jm_getNameFromPath _pathData _aPath))
        (:jm_setPath this (:jm_adjust _abPathUtil (:jm_getPathFromPath this (JR/toString (:jm_removeNameFromPath _abPathUtil _aPath)))))
    this))

(set jproto (table/setproto @{} AbPath/jproto))


