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
# package org.allbinary.input

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class AllBinarySensor
(var jproto nil)
(var jcell_NULL_ALLBINARY_SENSOR :jnone)
(var jstatic_NULL_ALLBINARY_SENSOR nil)
(var jsetstatic_NULL_ALLBINARY_SENSOR nil)
(var jcell_max :jnone)
(var jstatic_max nil)
(var jsetstatic_max nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_update nil)
(var jm_setMax nil)
(var jm_getMax nil)
(var jm_getId nil)
(var jm_shutdown nil)
(var jm_onSensorChange nil)

(set jstatic_NULL_ALLBINARY_SENSOR (fn jstatic_NULL_ALLBINARY_SENSOR []
  (when (= jcell_NULL_ALLBINARY_SENSOR :jnone) (set jcell_NULL_ALLBINARY_SENSOR (jnew_0)))
  jcell_NULL_ALLBINARY_SENSOR))
(set jsetstatic_NULL_ALLBINARY_SENSOR (fn jsetstatic_NULL_ALLBINARY_SENSOR [value] (set jcell_NULL_ALLBINARY_SENSOR value)))

(set jstatic_max (fn jstatic_max []
  (when (= jcell_max :jnone) (set jcell_max 100))
  jcell_max))
(set jsetstatic_max (fn jsetstatic_max [value] (set jcell_max value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllBinarySensor" :f_logUtil nil :f_commonStrings nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    this))
    
(set jm_init (fn jm_init [this]
    nil))
    
(set jm_update (fn jm_update [this]
    nil))
    
(set jm_setMax (fn jm_setMax [_max]
        (set jcell_max _max)))
    
(set jm_getMax (fn jm_getMax []
    (label jreturn
        (return jreturn (jstatic_max)))))
    
(set jm_getId (fn jm_getId [this]
    (label jreturn
        (return jreturn (jm_getMax)))))
    
(set jm_shutdown (fn jm_shutdown [this]
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this "shutdown")))
    
(set jm_onSensorChange (fn jm_onSensorChange [this]
        (ForcedLogUtil/jm_log ((this :f_commonStrings) :f_NOT_IMPLEMENTED) this)))

(set jproto @{:jm_init jm_init :jm_update jm_update :jm_getId jm_getId :jm_shutdown jm_shutdown :jm_onSensorChange jm_onSensorChange})


