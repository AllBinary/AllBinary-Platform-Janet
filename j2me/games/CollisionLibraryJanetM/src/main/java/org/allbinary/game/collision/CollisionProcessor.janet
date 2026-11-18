# Generated Code Do Not Modify
# package org.allbinary.game.collision

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class CollisionProcessor
(var jproto nil)
(var jnew_0 nil)
(var jm_isCollision nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CollisionProcessor"} jproto))
    this))

    
(set jm_isCollision (fn jm_isCollision [this _myLayer _myLayer2]
    (label jreturn
        (return jreturn false))))

(set jproto @{:jm_isCollision jm_isCollision})


