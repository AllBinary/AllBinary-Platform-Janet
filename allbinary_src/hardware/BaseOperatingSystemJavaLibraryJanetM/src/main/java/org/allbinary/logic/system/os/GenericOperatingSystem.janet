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
# package org.allbinary.logic.system.os

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CharacterSet/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/java/character/CharacterSet" "jnew_0" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- StringValidationUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringValidationUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- SystemProperties/jm_getInstance [& args] (JR/call jfile "./SystemProperties" "jm_getInstance" args))

# Java class GenericOperatingSystem
(var jproto nil)
(var jnew_0 nil)
(var jm_getName nil)
(var jm_getVersion nil)
(var jm_getArch nil)
(var jm_getCharacterSet nil)
(var jm_isOverScan nil)
(var jm_getOverScanXPercent nil)
(var jm_getOverScanYPercent nil)
(var jm_isScalable nil)
(var jm_isAutoHide nil)
(var jm_toString nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GenericOperatingSystem" :f_osName nil :f_osArch nil :f_osVersion nil :f_characterSet nil :f_scalable false} jproto))
    
    
    
    (put this :f_characterSet (CharacterSet/jnew_0))
    (put this :f_scalable false)
        (var _systemProperties (SystemProperties/jm_getInstance))
        (var _stringValidationUtil (StringValidationUtil/jm_getInstance))
        (var _EMPTY_STRING ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
        (if (:jm_isEmpty _stringValidationUtil (:jm_getName _systemProperties))
            (do
            (set (this :f_osName) _EMPTY_STRING))
            (do
            (set (this :f_osName) (:jm_getName _systemProperties))))
        (if (:jm_isEmpty _stringValidationUtil (:jm_getArch _systemProperties))
            (do
            (set (this :f_osArch) _EMPTY_STRING))
            (do
            (set (this :f_osArch) (:jm_getArch _systemProperties))))
        (if (:jm_isEmpty _stringValidationUtil (:jm_getVersion _systemProperties))
            (do
            (set (this :f_osVersion) _EMPTY_STRING))
            (do
            (set (this :f_osVersion) (:jm_getVersion _systemProperties))))
    this))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_osName)))))
    
(set jm_getVersion (fn jm_getVersion [this]
    (label jreturn
        (return jreturn (this :f_osVersion)))))
    
(set jm_getArch (fn jm_getArch [this]
    (label jreturn
        (return jreturn (this :f_osArch)))))
    
(set jm_getCharacterSet (fn jm_getCharacterSet [this]
    (label jreturn
        (return jreturn (this :f_characterSet)))))
    
(set jm_isOverScan (fn jm_isOverScan [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_getOverScanXPercent (fn jm_getOverScanXPercent [this]
    (label jreturn
        (return jreturn 100))))
    
(set jm_getOverScanYPercent (fn jm_getOverScanYPercent [this]
    (label jreturn
        (return jreturn 100))))
    
(set jm_isScalable (fn jm_isScalable [this]
    (label jreturn
        (return jreturn (this :f_scalable)))))
    
(set jm_isAutoHide (fn jm_isAutoHide [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _NEW_LINE ((CommonSeps/jm_getInstance) :f_NEW_LINE))
        (var _osBuffer (StringMaker/jnew_0))
        (:jm_append _osBuffer "Operating System Info: \n")
        (:jm_append _osBuffer (:jm_getName this))
        (:jm_append _osBuffer _NEW_LINE)
        (:jm_append _osBuffer (:jm_getArch this))
        (:jm_append _osBuffer _NEW_LINE)
        (:jm_append _osBuffer (:jm_getVersion this))
        (:jm_append _osBuffer _NEW_LINE)
        (:jm_append _osBuffer (:jm_toString_1 (StringUtil/jm_getInstance) (:jm_getCharacterSet this)))
        (:jm_append _osBuffer _NEW_LINE)
        (return jreturn (:jm_toString _osBuffer)))))

(set jproto @{:jm_getName jm_getName :jm_getVersion jm_getVersion :jm_getArch jm_getArch :jm_getCharacterSet jm_getCharacterSet :jm_isOverScan jm_isOverScan :jm_getOverScanXPercent jm_getOverScanXPercent :jm_getOverScanYPercent jm_getOverScanYPercent :jm_isScalable jm_isScalable :jm_isAutoHide jm_isAutoHide :jm_toString jm_toString})


