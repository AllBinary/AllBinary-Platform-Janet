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
# package org.allbinary.input.motion.button

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TouchScreenType/jnew_1 [& args] (JR/call jfile "./TouchScreenType" "jnew_1" args))

# Java class TouchScreenTypesFactory
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
    (var this (table/setproto @{:jclass "TouchScreenTypesFactory" :f_FINGER nil :f_NOTOUCH nil :f_STYLUS nil :f_UNDEFINED nil} jproto))
    (put this :f_FINGER (TouchScreenType/jnew_1 "Finger"))
    (put this :f_NOTOUCH (TouchScreenType/jnew_1 "No Touch"))
    (put this :f_STYLUS (TouchScreenType/jnew_1 "Stylus"))
    (put this :f_UNDEFINED (TouchScreenType/jnew_1 "Undefined"))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


