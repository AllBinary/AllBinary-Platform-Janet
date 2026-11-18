# Generated Code Do Not Modify
# package org.allbinary.animation.vector

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(import ./RectangleFilledAnimation :as RectangleFilledAnimation)

# Java class ARectangleFilledAnimation
(var jproto nil)
(var jnew_0 nil)
(var jm_nextFrame nil)
(var jm_paintXY nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ARectangleFilledAnimation" :f_x 0 :f_y 0} jproto))
    
    
        (JR/superInit this (RectangleFilledAnimation/jnew_3 0 0 ((BasicColorFactory/jm_getInstance) :f_BLACK)))
    this))
    
(set jm_nextFrame (fn jm_nextFrame [this]
    nil))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _unusedX _unusedY]
        ((get RectangleFilledAnimation/jproto :jm_paintXY) this _graphics (this :f_x) (this :f_y))))

(set jproto (table/setproto @{:jm_nextFrame jm_nextFrame :jm_paintXY jm_paintXY} RectangleFilledAnimation/jproto))


