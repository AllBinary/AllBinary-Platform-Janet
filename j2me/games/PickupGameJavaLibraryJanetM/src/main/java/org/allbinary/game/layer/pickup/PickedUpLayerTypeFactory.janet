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
# package org.allbinary.game.layer.pickup

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- PickedUpLayerType/jnew_1 [& args] (JR/call jfile "./PickedUpLayerType" "jnew_1" args))

# Java class PickedUpLayerTypeFactory
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
    (var this (table/setproto @{:jclass "PickedUpLayerTypeFactory" :f_NONE nil :f_BEAM nil :f_MINE nil :f_PROJECTILE nil :f_ENHANCEMENT nil :f_MORPH nil :f_PART nil :f_HEAL nil :f_LIFE nil :f_POINTS nil} jproto))
    (put this :f_NONE (PickedUpLayerType/jnew_1 ((StringUtil/jm_getInstance) :f_NULL_STRING)))
    (put this :f_BEAM (PickedUpLayerType/jnew_1 "BEAM"))
    (put this :f_MINE (PickedUpLayerType/jnew_1 "MINE"))
    (put this :f_PROJECTILE (PickedUpLayerType/jnew_1 "PROJECTILE"))
    (put this :f_ENHANCEMENT (PickedUpLayerType/jnew_1 "Enhancement"))
    (put this :f_MORPH (PickedUpLayerType/jnew_1 "Morph"))
    (put this :f_PART (PickedUpLayerType/jnew_1 "Part"))
    (put this :f_HEAL (PickedUpLayerType/jnew_1 "Heal"))
    (put this :f_LIFE (PickedUpLayerType/jnew_1 "Life"))
    (put this :f_POINTS (PickedUpLayerType/jnew_1 "Points"))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


