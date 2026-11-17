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
# package org.allbinary.logic.system

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- KotlinUtil/jm_getShortName [& args] (JR/call jfile "../../../../org/allbinary/KotlinUtil" "jm_getShortName" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))

# Java class SoftwareInformation
(var jproto nil)
(var jnew_3 nil)
(var jm_getName nil)
(var jm_getVersion nil)
(var jm_toShortString nil)
(var jm_toString nil)

    
(set jnew_3 (fn jnew_3 [_name _version _shortName]
    (var this (table/setproto @{:jclass "SoftwareInformation" :f_name nil :f_shortName nil :f_version nil} jproto))
    
    
    
        (set (this :f_name) _name)
        (set (this :f_version) _version)
        (set (this :f_shortName) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) _shortName) (KotlinUtil/jm_getShortName))))
    this))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_getVersion (fn jm_getVersion [this]
    (label jreturn
        (return jreturn (this :f_version)))))
    
(set jm_toShortString (fn jm_toShortString [this]
    (label jreturn
        (return jreturn (this :f_shortName)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _NAME "Name: ")
        (var _VERSION "Version: ")
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer _NAME)
        (:jm_append _stringBuffer (:jm_getName this))
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
        (:jm_append _stringBuffer _VERSION)
        (:jm_append _stringBuffer (:jm_getVersion this))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_getName jm_getName :jm_getVersion jm_getVersion :jm_toShortString jm_toShortString :jm_toString jm_toString})


