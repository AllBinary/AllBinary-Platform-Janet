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
# package org.allbinary.game.combat.destroy.event

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DestroyedEvent/jnew_1 [& args] (JR/call jfile "./DestroyedEvent" "jnew_1" args))

# Java class DestroyEventFactory
(var jproto nil)
(var jnew_1 nil)
(var jm_getInstance nil)

    
(set jnew_1 (fn jnew_1 [_combatGameCanvas]
    (var this (table/setproto @{:jclass "DestroyEventFactory" :f_combatGameCanvas nil} jproto))
    
        (set (this :f_combatGameCanvas) _combatGameCanvas)
    this))
    
(set jm_getInstance (fn jm_getInstance [this]
    (label jreturn
        (return jreturn (DestroyedEvent/jnew_1 (this :f_combatGameCanvas))))))

(set jproto @{:jm_getInstance jm_getInstance})


