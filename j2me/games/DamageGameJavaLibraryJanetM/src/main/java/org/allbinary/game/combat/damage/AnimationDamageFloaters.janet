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
# package org.allbinary.game.combat.damage

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CanvasStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/CanvasStrings" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))
(import ./DamageFloaters :as DamageFloaters)

# Java class AnimationDamageFloaters
(var jproto nil)
(var jnew_4 nil)
(var jm_add nil)
(var jm_paint nil)

    
(set jnew_4 (fn jnew_4 [_layerInterface _animationInterfaceArray _dx _dy]
    (var this (table/setproto @{:jclass "AnimationDamageFloaters" :f_logUtil nil :f_layerInterface nil :f_animationInterfaceArray nil :f_circularIndexUtil nil :f_dx 0 :f_dy 0} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    
    
    
    
    (JR/superInit this (DamageFloaters/jnew_0))
        (set (this :f_animationInterfaceArray) _animationInterfaceArray)
        (do
            (var _index (JR/i32 (- (length (this :f_animationInterfaceArray)) 1)))
            (while (>= _index 0)
                (do
            (JR/className ((this :f_animationInterfaceArray) _index)))
                (do (set _index (JR/i32 (- _index 1))))))
        (set (this :f_layerInterface) _layerInterface)
        (set (this :f_circularIndexUtil) (CircularIndexUtil/jm_createInstance (length (this :f_animationInterfaceArray))))
        (set (this :f_dx) _dx)
        (set (this :f_dy) _dy)
    this))
    
(set jm_add (fn jm_add [this _damage]
        (var _i (:jm_getIndex (this :f_circularIndexUtil)))
        (JR/className ((this :f_animationInterfaceArray) _i))
        (:jm_next (this :f_circularIndexUtil))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (try
            (do
            (var _viewPosition (:jm_getViewPosition (this :f_layerInterface)))
            (var _x (:jm_getX _viewPosition))
            (var _y (:jm_getY _viewPosition))
            (do
                (var _index 0)
                (while (< _index (length (this :f_animationInterfaceArray)))
                    (do
                (var _animationInterface ((this :f_animationInterfaceArray) _index))
                (if (< (:jm_getFrame _animationInterface) (JR/i32 (- (:jm_getAnimationSize _animationInterface) 1)))
                    (do
                    (var _delta (JR/i32 (* (:jm_getFrame _animationInterface) 20)))
                    (:jm_paintXY _animationInterface _graphics (JR/i32 (+ _x (this :f_dx))) (JR/i32 (+ (JR/i32 (- _y _delta)) (this :f_dy))))
                    (:jm_nextFrame _animationInterface))))
                    (do (set _index (JR/i32 (+ _index 1)))))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (var _canvasStrings (CanvasStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_canvasStrings :f_PAINT) _e))))))

(set jproto (table/setproto @{:jm_add jm_add :jm_paint jm_paint} DamageFloaters/jproto))


