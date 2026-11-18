# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.graphics.displayable

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "./DisplayInfoSingleton" "jm_getInstance" args))

# Java class GameTickDisplayInfoSingleton
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_update nil)
(var jm_getLastWidth nil)
(var jm_getLastHeight nil)
(var jm_getLastHalfWidth nil)
(var jm_getLastHalfHeight nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameTickDisplayInfoSingleton" :f_displayInfoSingleton nil :f_lastWidth 0 :f_lastHeight 0 :f_lastHalfWidth 0 :f_lastHalfHeight 0} jproto))
    (put this :f_displayInfoSingleton (DisplayInfoSingleton/jm_getInstance))
    (put this :f_lastWidth (:jm_getLastWidth (this :f_displayInfoSingleton)))
    (put this :f_lastHeight (:jm_getLastHeight (this :f_displayInfoSingleton)))
    (put this :f_lastHalfWidth (:jm_getLastHalfWidth (this :f_displayInfoSingleton)))
    (put this :f_lastHalfHeight (:jm_getLastHalfHeight (this :f_displayInfoSingleton)))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_update (fn jm_update [this]
        (set (this :f_lastWidth) (:jm_getLastWidth (this :f_displayInfoSingleton)))
        (set (this :f_lastHeight) (:jm_getLastHeight (this :f_displayInfoSingleton)))
        (set (this :f_lastHalfWidth) (:jm_getLastHalfWidth (this :f_displayInfoSingleton)))
        (set (this :f_lastHalfHeight) (:jm_getLastHalfHeight (this :f_displayInfoSingleton)))))
    
(set jm_getLastWidth (fn jm_getLastWidth [this]
    (label jreturn
        (return jreturn (this :f_lastWidth)))))
    
(set jm_getLastHeight (fn jm_getLastHeight [this]
    (label jreturn
        (return jreturn (this :f_lastHeight)))))
    
(set jm_getLastHalfWidth (fn jm_getLastHalfWidth [this]
    (label jreturn
        (return jreturn (this :f_lastHalfWidth)))))
    
(set jm_getLastHalfHeight (fn jm_getLastHalfHeight [this]
    (label jreturn
        (return jreturn (this :f_lastHalfHeight)))))

(set jproto @{:jm_update jm_update :jm_getLastWidth jm_getLastWidth :jm_getLastHeight jm_getLastHeight :jm_getLastHalfWidth jm_getLastHalfWidth :jm_getLastHalfHeight jm_getLastHalfHeight})


