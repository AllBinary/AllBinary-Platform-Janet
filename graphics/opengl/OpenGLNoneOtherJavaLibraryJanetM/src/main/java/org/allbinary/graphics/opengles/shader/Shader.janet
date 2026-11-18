# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.graphics.opengles.shader

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))

# Java class Shader
(var jproto nil)
(var jnew_0 nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "Shader" :f_shaderName nil :f_shaderStringList nil :f_shaderAsString nil :f_shaderHandle 0} jproto))
    (put this :f_shaderName ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_shaderStringList (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))
    (put this :f_shaderAsString ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    
    this))


(set jproto @{})


