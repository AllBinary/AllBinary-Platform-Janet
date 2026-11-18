# Generated Code Do Not Modify
# package org.allbinary.game.collision

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./CollisionProcessor :as CollisionProcessor)

# Java class Collision2DProcessor
(var jproto nil)
(var jnew_0 nil)
(var jm_isCollision nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "Collision2DProcessor"} jproto))
    (JR/superInit this (CollisionProcessor/jnew_0))
    this))

    
(set jm_isCollision (fn jm_isCollision [this _myLayer _myLayer2]
    (label jreturn
        (if (or (or (or (>= (:jm_getXP _myLayer2) (:jm_getX2 _myLayer)) (>= (:jm_getYP _myLayer2) (:jm_getY2 _myLayer))) (<= (:jm_getX2 _myLayer2) (:jm_getXP _myLayer))) (<= (:jm_getY2 _myLayer2) (:jm_getYP _myLayer)))
            (do
            (return jreturn false))
            (do
            (return jreturn true))))))

(set jproto (table/setproto @{:jm_isCollision jm_isCollision} CollisionProcessor/jproto))


