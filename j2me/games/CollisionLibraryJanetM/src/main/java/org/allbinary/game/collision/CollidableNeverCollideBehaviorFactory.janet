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
# package org.allbinary.game.collision

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./CollidableBaseBehaviorFactory :as CollidableBaseBehaviorFactory)
(defn- CollidableNeverCollideBehavior/jnew_1 [& args] (JR/call jfile "./CollidableNeverCollideBehavior" "jnew_1" args))

# Java class CollidableNeverCollideBehaviorFactory
(var jproto nil)
(var jcell_instanceC :jnone)
(var jstatic_instanceC nil)
(var jsetstatic_instanceC nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_createBehavior nil)

(set jstatic_instanceC (fn jstatic_instanceC []
  (when (= jcell_instanceC :jnone) (set jcell_instanceC (jnew_0)))
  jcell_instanceC))
(set jsetstatic_instanceC (fn jsetstatic_instanceC [value] (set jcell_instanceC value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CollidableNeverCollideBehaviorFactory" :f_instance nil} jproto))
    (put this :f_instance (CollidableNeverCollideBehavior/jnew_1 false))
    (JR/superInit this (CollidableBaseBehaviorFactory/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instanceC)))))
    
(set jm_createBehavior (fn jm_createBehavior [this]
    (label jreturn
        (return jreturn (this :f_instance)))))

(set jproto (table/setproto @{:jm_createBehavior jm_createBehavior} CollidableBaseBehaviorFactory/jproto))


