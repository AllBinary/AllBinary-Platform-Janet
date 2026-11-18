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
# package org.allbinary.game.ag.layer.hud.basic

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicHudFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/game/graphics/hud/BasicHudFactory" "jm_getInstance" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- NumberStringHud/jnew_6 [& args] (JR/call jfile "./NumberStringHud" "jnew_6" args))

# Java class NumberStringHudFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_createHud nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (NullUtil/jm_getInstance)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NumberStringHudFactory" :f_NULL_NUMBER_STRING_HUD nil} jproto))
    (put this :f_NULL_NUMBER_STRING_HUD (:jm_createHud this))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) (NullUtil/jm_getInstance))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jm_createHud (fn jm_createHud [this]
    (label jreturn
        (try
            (do
            (return jreturn (NumberStringHud/jnew_6 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) 9 ((BasicHudFactory/jm_getInstance) :f_ABSOLUTE) 1 0 ((BasicColorFactory/jm_getInstance) :f_NULL_COLOR))))
            ([_e] (do
            (var _logUtil (LogUtil/jm_getInstance))
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put _logUtil (_commonStrings :f_EXCEPTION) this (_commonStrings :f_CONSTRUCTOR) _e)
            (error (JR/newException "RuntimeException"))))))))

(set jproto @{:jm_createHud jm_createHud})


