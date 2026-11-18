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
# package org.allbinary.game.displayable

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DisplayChangeEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventHandler" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class GameLevelDisplayChangeEventListenersFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_add nil)
(var jm_clear nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameLevelDisplayChangeEventListenersFactory" :f_list nil} jproto))
    (put this :f_list (BasicArrayListD/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_add (fn jm_add [this _displayChangeEventListener]
        (:jm_add (this :f_list) _displayChangeEventListener)
        (:jm_addListenerInterface (DisplayChangeEventHandler/jm_getInstance) _displayChangeEventListener)))
    
(set jm_clear (fn jm_clear [this]
        (var _displayChangeEventHandler (DisplayChangeEventHandler/jm_getInstance))
        (var _displayChangeEventListener nil)
        (do
            (var _index (:jm_size (this :f_list)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set _displayChangeEventListener (((this :f_list) :f_objectArray) _index))
            (:jm_removeListener _displayChangeEventHandler _displayChangeEventListener))))
        (:jm_clear (this :f_list))))

(set jproto @{:jm_add jm_add :jm_clear jm_clear})


