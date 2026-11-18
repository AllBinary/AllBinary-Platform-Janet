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
# package org.allbinary.canvas

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(import ../../../java/lang/Integer :as Integer)

# Java class GameGlobalsFactory
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
    (var this (table/setproto @{:jclass "GameGlobalsFactory" :f_newCanvas false :f_newDisplaybleTime 0 :f_point nil} jproto))
    (put this :f_newCanvas true)
    (put this :f_newDisplaybleTime (Integer/jstatic_MIN_VALUE))
    (put this :f_point ((PointFactory/jm_getInstance) :f_ZERO_ZERO))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


