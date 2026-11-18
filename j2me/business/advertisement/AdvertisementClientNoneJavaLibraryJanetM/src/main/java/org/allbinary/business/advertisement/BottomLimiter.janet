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
# package org.allbinary.business.advertisement

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- GameAdStateFactory/jm_getInstance [& args] (JR/call jfile "./GameAdStateFactory" "jm_getInstance" args))

# Java class BottomLimiter
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_update nil)
(var jm_getDeltaY nil)
(var jm_getBottom nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BottomLimiter" :f_bottom 0 :f_deltaY 0 :f_lower 0 :f_higher 0} jproto))
    
    
    
    
    this))
    
(set jm_init (fn jm_init [this _lower _higher]
        (set (this :f_lower) _lower)
        (set (this :f_higher) _higher)))
    
(set jm_update (fn jm_update [this]
        (var _displayInfo (DisplayInfoSingleton/jm_getInstance))
        (var _gameAdState (:jm_getCurrentInstance (GameAdStateFactory/jm_getInstance)))
        (if (:jm_isShowingAt _gameAdState)
            (do
            (set (this :f_deltaY) (this :f_higher)))
            (do
            (set (this :f_deltaY) (this :f_lower))))
        (set (this :f_bottom) (JR/i32 (- (:jm_getLastHeight _displayInfo) (this :f_deltaY))))))
    
(set jm_getDeltaY (fn jm_getDeltaY [this]
    (label jreturn
        (return jreturn (this :f_deltaY)))))
    
(set jm_getBottom (fn jm_getBottom [this]
    (label jreturn
        (return jreturn (this :f_bottom)))))

(set jproto @{:jm_init jm_init :jm_update jm_update :jm_getDeltaY jm_getDeltaY :jm_getBottom jm_getBottom})


