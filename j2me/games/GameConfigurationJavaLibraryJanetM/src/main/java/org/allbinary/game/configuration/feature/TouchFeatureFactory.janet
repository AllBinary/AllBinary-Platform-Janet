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
# package org.allbinary.game.configuration.feature

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TouchFeature/jnew_1 [& args] (JR/call jfile "./TouchFeature" "jnew_1" args))

# Java class TouchFeatureFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TouchFeatureFactory" :f_TOUCH_ENABLED nil :f_SHOW_SCREEN_BUTTONS nil :f_AUTO_HIDE_SHOW_SCREEN_BUTTONS nil :f_HIDE_SCREEN_BUTTONS nil} jproto))
    (put this :f_TOUCH_ENABLED (TouchFeature/jnew_1 "Touch Enabled"))
    (put this :f_SHOW_SCREEN_BUTTONS (TouchFeature/jnew_1 "Show"))
    (put this :f_AUTO_HIDE_SHOW_SCREEN_BUTTONS (TouchFeature/jnew_1 "Auto Hide (One Level)"))
    (put this :f_HIDE_SCREEN_BUTTONS (TouchFeature/jnew_1 "Hide"))
    this))

(set jproto @{})


