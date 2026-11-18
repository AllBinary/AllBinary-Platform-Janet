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
# package org.allbinary.game.layer

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DirectionFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/direction/DirectionFactory" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)
(defn- LayerPlacementType/jnew_1 [& args] (JR/call jfile "./LayerPlacementType" "jnew_1" args))

# Java class LayerPlacementTypeFactory
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
    (var this (table/setproto @{:jclass "LayerPlacementTypeFactory" :f_MAP nil :f_LEFT nil :f_DOWN nil :f_UP nil :f_RIGHT nil} jproto))
    (put this :f_MAP (LayerPlacementType/jnew_1 (Integer/jstatic_MAX_VALUE)))
    (put this :f_LEFT (LayerPlacementType/jnew_1 (JR/className ((DirectionFactory/jm_getInstance) :f_LEFT))))
    (put this :f_DOWN (LayerPlacementType/jnew_1 (JR/className ((DirectionFactory/jm_getInstance) :f_DOWN))))
    (put this :f_UP (LayerPlacementType/jnew_1 (JR/className ((DirectionFactory/jm_getInstance) :f_UP))))
    (put this :f_RIGHT (LayerPlacementType/jnew_1 (JR/className ((DirectionFactory/jm_getInstance) :f_RIGHT))))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


