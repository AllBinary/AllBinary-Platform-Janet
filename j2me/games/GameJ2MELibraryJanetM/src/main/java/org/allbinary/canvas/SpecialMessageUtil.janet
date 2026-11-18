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
# package org.allbinary.canvas

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- OpenGLFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- Memory/jm_getInfo [& args] (JR/call jfile "../../../org/allbinary/system/Memory" "jm_getInfo" args))
(defn- GameStatisticsFactory/jm_getInstance [& args] (JR/call jfile "./GameStatisticsFactory" "jm_getInstance" args))

# Java class SpecialMessageUtil
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_get nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SpecialMessageUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jm_get (fn jm_get [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer (Memory/jm_getInfo))
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
        (:jm_append _stringBuffer (:jm_toString (GameStatisticsFactory/jm_getInstance)))
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
        (:jm_append _stringBuffer " Option: ")
        (if (:jm_isDefault (Features/jm_getInstance) ((OpenGLFeatureFactory/jm_getInstance) :f_OPENGL_AUTO_SELECT))
            (do
            (:jm_append _stringBuffer (JR/className ((OpenGLFeatureFactory/jm_getInstance) :f_OPENGL_AUTO_SELECT))))
            (do
            (:jm_append _stringBuffer (JR/className ((OpenGLFeatureFactory/jm_getInstance) :f_OPENGL_MINIMUM)))))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_get jm_get})


