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
(defn- Feature/jnew_1 [& args] (JR/call jfile "./Feature" "jnew_1" args))

# Java class MainFeatureFactory
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

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MainFeatureFactory" :f_FULL_SCREEN nil :f_TITLE_BAR nil :f_STATIC nil :f_LOAD_ONDEMAND nil :f_LOAD_ALL nil} jproto))
    (put this :f_FULL_SCREEN (Feature/jnew_1 "Full Screen"))
    (put this :f_TITLE_BAR (Feature/jnew_1 "Title Bar"))
    (put this :f_STATIC (Feature/jnew_1 "Static Dependent Feature"))
    (put this :f_LOAD_ONDEMAND (Feature/jnew_1 "Load OnDemand"))
    (put this :f_LOAD_ALL (Feature/jnew_1 "Load All"))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


