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
(defn- MainFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/game/configuration/feature/MainFeatureFactory" "jm_getInstance" args))

# Java class FullScreenUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_initOnRun nil)
(var jm_init nil)
(var jm_isScreenChange nil)
(var jm_isScreenChangeCanvas nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "FullScreenUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_initOnRun (fn jm_initOnRun [this _fullScreenInterface _commandListener]
        (if (not (nil? _commandListener))
            (do
            (:jm_init this _fullScreenInterface)))))
    
(set jm_init (fn jm_init [this _fullScreenInterface]
    nil))
    
(set jm_isScreenChange (fn jm_isScreenChange [this _isFullScreen]
    (label jreturn
        (var _mainFeatureFactory (MainFeatureFactory/jm_getInstance))
        (var _features (Features/jm_getInstance))
        (if (not= (:jm_isFeature _features (_mainFeatureFactory :f_FULL_SCREEN)) _isFullScreen)
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isScreenChangeCanvas (fn jm_isScreenChangeCanvas [this _fullScreenInterface]
    (label jreturn
        (return jreturn (:jm_isScreenChange this false)))))

(set jproto @{:jm_initOnRun jm_initOnRun :jm_init jm_init :jm_isScreenChange jm_isScreenChange :jm_isScreenChangeCanvas jm_isScreenChangeCanvas})


