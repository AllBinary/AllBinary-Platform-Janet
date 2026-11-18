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
# package org.allbinary.graphics

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ScreenEmptyListener/jnew_0 [& args] (JR/call jfile "./ScreenEmptyListener" "jnew_0" args))

# Java class ScreenListenerHandler
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_setListener nil)
(var jm_fireWithState nil)
(var jm_fire nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ScreenListenerHandler" :f_screenListenerInterface nil} jproto))
    (put this :f_screenListenerInterface (ScreenEmptyListener/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_setListener (fn jm_setListener [this _screenListenerInterface]
        (set (this :f_screenListenerInterface) _screenListenerInterface)))
    
(set jm_fireWithState (fn jm_fireWithState [this _isFullScreen]
        (:jm_onFullScreen (this :f_screenListenerInterface) _isFullScreen)))
    
(set jm_fire (fn jm_fire [this]
        (:jm_onFullScreenDisplay (this :f_screenListenerInterface))))

(set jproto @{:jm_setListener jm_setListener :jm_fireWithState jm_fireWithState :jm_fire jm_fire})


