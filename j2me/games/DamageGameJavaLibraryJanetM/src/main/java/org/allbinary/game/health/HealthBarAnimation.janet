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
# package org.allbinary.game.health

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/animation/Animation :as Animation)
(defn- BasicHudFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/graphics/hud/BasicHudFactory" "jm_getInstance" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))

# Java class HealthBarAnimation
(var jproto nil)
(var jnew_2 nil)
(var jm_onHealthChange nil)
(var jm_getY nil)

    
(set jnew_2 (fn jnew_2 [_layerInterface _location]
    (var this (table/setproto @{:jclass "HealthBarAnimation" :f_basicColorFactory nil :f_x2 0 :f_thickness 0 :f_location 0 :f_allbinaryLayer nil} jproto))
    (put this :f_basicColorFactory (BasicColorFactory/jm_getInstance))
    
    
    
    
    (JR/superInit this (Animation/jnew_0))
        (set (this :f_allbinaryLayer) _layerInterface)
        (set (this :f_location) _location)
        (var _basicHudFactory (BasicHudFactory/jm_getInstance))
        (if (and (not= (this :f_location) (_basicHudFactory :f_TOPLEFT)) (not= (this :f_location) (_basicHudFactory :f_BOTTOMLEFT)))
            (do
            (error (JR/newException "Exception" "Location Not Valid"))))
        (if (> (:jm_getWidth _layerInterface) 40)
            (do
            (set (this :f_thickness) 3))
            (if (> (:jm_getWidth _layerInterface) 20)
            (do
            (set (this :f_thickness) 2))
            (do
            (set (this :f_thickness) 1))))
    this))
    
(set jm_onHealthChange (fn jm_onHealthChange [this _newX2]
        (set (this :f_x2) _newX2)
        (var _quarter (brshift (:jm_getWidth (this :f_allbinaryLayer)) 2))
        (if (> (this :f_x2) (JR/i32 (* _quarter 3)))
            (do
            (set (this :f_basicColor) ((this :f_basicColorFactory) :f_GREEN))
            (set (this :f_colorP) (JR/className (this :f_basicColor))))
            (if (> (this :f_x2) (JR/i32 (* _quarter 2)))
            (do
            (set (this :f_basicColor) ((this :f_basicColorFactory) :f_YELLOW))
            (set (this :f_colorP) (JR/className (this :f_basicColor))))
            (if (> (this :f_x2) _quarter)
            (do
            (set (this :f_basicColor) ((this :f_basicColorFactory) :f_ORANGE))
            (set (this :f_colorP) (JR/className (this :f_basicColor))))
            (do
            (set (this :f_basicColor) ((this :f_basicColorFactory) :f_RED))
            (set (this :f_colorP) (JR/className (this :f_basicColor)))))))))
    
(set jm_getY (fn jm_getY [this]
    (label jreturn
        (var _basicHudFactory (BasicHudFactory/jm_getInstance))
        (if (= (this :f_location) (_basicHudFactory :f_TOPLEFT))
            (do
            (return jreturn (JR/i32 (- (JR/className (:jm_getViewPosition (this :f_allbinaryLayer))) 4))))
            (if (= (this :f_location) (_basicHudFactory :f_BOTTOMLEFT))
            (do
            (return jreturn (JR/i32 (+ (JR/className (:jm_getViewPosition (this :f_allbinaryLayer))) 4))))))
        (return jreturn (JR/i32 (- 1))))))

(set jproto (table/setproto @{:jm_onHealthChange jm_onHealthChange :jm_getY jm_getY} Animation/jproto))


