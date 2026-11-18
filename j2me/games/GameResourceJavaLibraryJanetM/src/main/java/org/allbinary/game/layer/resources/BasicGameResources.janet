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
# package org.allbinary.game.layer.resources

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameConfigurationCentral/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/GameConfigurationCentral" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- GameGraphicsResourceUtil/jm_getInstance [& args] (JR/call jfile "./GameGraphicsResourceUtil" "jm_getInstance" args))

# Java class BasicGameResources
(var jproto nil)
(var jcell_stringBuffer :jnone)
(var jstatic_stringBuffer nil)
(var jsetstatic_stringBuffer nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_append nil)
(var jm_getString nil)

(set jstatic_stringBuffer (fn jstatic_stringBuffer []
  (when (= jcell_stringBuffer :jnone) (set jcell_stringBuffer (StringMaker/jnew_0)))
  jcell_stringBuffer))
(set jsetstatic_stringBuffer (fn jsetstatic_stringBuffer [value] (set jcell_stringBuffer value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicGameResources" :f_logUtil nil :f_RESOURCE nil :f_RESOURCE_DESTROY nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_RESOURCE ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_RESOURCE_DESTROY ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    this))
    
(set jm_init (fn jm_init [this _ROOT _SIZE]
        (try
            (do
            (var _scale (JR/className (JR/className ((GameConfigurationCentral/jm_getInstance) :f_SCALE))))
            (if (and (> _scale 1) (< (JR/i32 (- _scale 1)) (length _SIZE)))
                (do
                (:jm_append this _ROOT (_SIZE (JR/i32 (- _scale 1)))))
                (do
                (error (JR/newException "Exception" (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) "Invalid Value: ") _scale)))))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_INIT) _e))))))
    
(set jm_append (fn jm_append [this _ROOT _sizeString]
        (var _DESTROY "_destroy")
        (var _string (:jm_getString this))
        (JR/className (jstatic_stringBuffer))
        (JR/className (jstatic_stringBuffer))
        (JR/className (jstatic_stringBuffer))
        (JR/className (jstatic_stringBuffer))
        (set (this :f_RESOURCE) (JR/toString (jstatic_stringBuffer)))
        (JR/className (jstatic_stringBuffer))
        (JR/className (jstatic_stringBuffer))
        (JR/className (jstatic_stringBuffer))
        (JR/className (jstatic_stringBuffer))
        (JR/className (jstatic_stringBuffer))
        (set (this :f_RESOURCE_DESTROY) (JR/toString (jstatic_stringBuffer)))))
    
(set jm_getString (fn jm_getString [this]
    (label jreturn
        (return jreturn (:jm_getName (GameGraphicsResourceUtil/jm_getInstance))))))

(set jproto @{:jm_init jm_init :jm_append jm_append :jm_getString jm_getString})


