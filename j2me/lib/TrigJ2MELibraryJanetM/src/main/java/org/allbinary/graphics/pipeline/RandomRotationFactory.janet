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
# package org.allbinary.graphics.pipeline

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- MyRandomFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/rand/MyRandomFactory" "jm_getInstance" args))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(defn- BasicGraphicsPipeline/jnew_1 [& args] (JR/call jfile "./BasicGraphicsPipeline" "jnew_1" args))

# Java class RandomRotationFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getInstanceList nil)
(var jm_getNextRandomAngle nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "RandomRotationFactory" :f_myRandomFactory nil :f_angleFactory nil} jproto))
    (put this :f_myRandomFactory (MyRandomFactory/jm_getInstance))
    (put this :f_angleFactory (AngleFactory/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getInstanceList (fn jm_getInstanceList [this _vector _howMuch]
    (label jreturn
        (var _graphicsPipe (BasicGraphicsPipeline/jnew_1 _vector))
        (:jm_createMatrix _graphicsPipe)
        (:jm_rotateToAngle _graphicsPipe (:jm_getAt (this :f_angleFactory) (:jm_getNextRandomAngle this _howMuch)))
        (return jreturn (:jm_getMatrix _graphicsPipe)))))
    
(set jm_getNextRandomAngle (fn jm_getNextRandomAngle [this _howMuch]
    (label jreturn
        (return jreturn (:jm_getNextInt (this :f_myRandomFactory) (JR/i32 (* _howMuch 10)))))))

(set jproto @{:jm_getInstanceList jm_getInstanceList :jm_getNextRandomAngle jm_getNextRandomAngle})


