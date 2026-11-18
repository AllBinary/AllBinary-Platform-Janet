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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PersistentInputMapping/jm_getNullInstance [& args] (JR/call jfile "../../../../org/allbinary/game/input/mapping/PersistentInputMapping" "jm_getNullInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- MotionJ2MEGameInputMapping/jnew_0 [& args] (JR/call jfile "./MotionJ2MEGameInputMapping" "jnew_0" args))

# Java class PlatformInputMappingFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getPersistentInputMappingInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PlatformInputMappingFactory" :f_logUtil nil :f_inputToGameKeyMapping nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_inputToGameKeyMapping (PersistentInputMapping/jm_getNullInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getPersistentInputMappingInstance (fn jm_getPersistentInputMappingInstance [this]
    (label jreturn
        (try
            (do
            (if (= (this :f_inputToGameKeyMapping) (PersistentInputMapping/jm_getNullInstance))
                (do
                (set (this :f_inputToGameKeyMapping) (MotionJ2MEGameInputMapping/jnew_0)))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_GET_INSTANCE) _e))))
        (return jreturn (this :f_inputToGameKeyMapping)))))

(set jproto @{:jm_getPersistentInputMappingInstance jm_getPersistentInputMappingInstance})


