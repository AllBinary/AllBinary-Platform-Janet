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
(defn- MyRandomFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/rand/MyRandomFactory" "jm_getInstance" args))
(defn- BasicColorArrayIndexer/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorArrayIndexer" "jnew_1" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- BasicColorSetUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorSetUtil" "jm_getInstance" args))
(defn- CharArrayFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/java/character/CharArrayFactory" "jm_getInstance" args))
(defn- PrimitiveLongUtil/jm_createPowerOfTen [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/PrimitiveLongUtil" "jm_createPowerOfTen" args))
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))
(import ./DamageFloaters :as DamageFloaters)

# Java class PtsDamageFloaters
(var jproto nil)
(var jcell_basicColorArrayIndexer :jnone)
(var jstatic_basicColorArrayIndexer nil)
(var jsetstatic_basicColorArrayIndexer nil)
(var jnew_1 nil)
(var jm_add nil)
(var jm_paint nil)

(set jstatic_basicColorArrayIndexer (fn jstatic_basicColorArrayIndexer []
  (when (= jcell_basicColorArrayIndexer :jnone) (set jcell_basicColorArrayIndexer (BasicColorArrayIndexer/jnew_1 @[((BasicColorFactory/jm_getInstance) :f_WHITE) ((BasicColorFactory/jm_getInstance) :f_RED) ((BasicColorFactory/jm_getInstance) :f_YELLOW) ((BasicColorFactory/jm_getInstance) :f_BLUE)])))
  jcell_basicColorArrayIndexer))
(set jsetstatic_basicColorArrayIndexer (fn jsetstatic_basicColorArrayIndexer [value] (set jcell_basicColorArrayIndexer value)))

    
(set jnew_1 (fn jnew_1 [_layerInterface]
    (var this (table/setproto @{:jclass "PtsDamageFloaters" :f_basicSetColorUtil nil :f_layerInterface nil :f_lastDamage nil :f_lastDamageString nil :f_lastDamageStringSizeArray nil :f_circularIndexUtil nil :f_primitiveLongUtil nil :f_myRandomFactory nil} jproto))
    (put this :f_basicSetColorUtil (BasicColorSetUtil/jm_getInstance))
    
    (put this :f_lastDamage (array/new-filled 5 0))
    (put this :f_lastDamageString (seq [jindex1 :range [0 5]] (array/new-filled 0 0)))
    (put this :f_lastDamageStringSizeArray (array/new-filled 5 0))
    (put this :f_circularIndexUtil (CircularIndexUtil/jm_createInstance 5))
    
    (put this :f_myRandomFactory (MyRandomFactory/jm_getInstance))
    (JR/superInit this (DamageFloaters/jnew_0))
        (set (this :f_primitiveLongUtil) (PrimitiveLongUtil/jm_createPowerOfTen 100000))
        (set (this :f_layerInterface) _layerInterface)
        (var _CHAR_ARRAY (:jm_getZeroCharArray (CharArrayFactory/jm_getInstance)))
        (do
            (var _index (JR/i32 (- (length (this :f_lastDamageString)) 1)))
            (while (>= _index 0)
                (do
            (set ((this :f_lastDamageString) _index) _CHAR_ARRAY))
                (do (set _index (JR/i32 (- _index 1))))))
    this))
    
(set jm_add (fn jm_add [this _damage]
        (var _index (:jm_getIndex (this :f_circularIndexUtil)))
        (set ((this :f_lastDamage) _index) _damage)
        (set ((this :f_lastDamageString) _index) (:jm_getCharArray (this :f_primitiveLongUtil) ((this :f_lastDamage) _index)))
        (set ((this :f_lastDamageStringSizeArray) _index) (:jm_getCurrentTotalDigits (this :f_primitiveLongUtil)))
        (:jm_next (this :f_circularIndexUtil))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (var _viewPosition (:jm_getViewPosition (this :f_layerInterface)))
        (var _x (:jm_getX _viewPosition))
        (var _y (:jm_getY _viewPosition))
        (do
            (var _index (JR/i32 (- (length (this :f_lastDamage)) 1)))
            (while (>= _index 0)
                (do
            (if (not= ((this :f_lastDamage) _index) 0)
                (do
                (var _delta (JR/i32 (* 10 (JR/i32 (+ _index 2)))))
                (:jm_setBasicColorP (this :f_basicSetColorUtil) _graphics (JR/className (jstatic_basicColorArrayIndexer)))
                (:jm_drawChars _graphics ((this :f_lastDamageString) _index) 0 ((this :f_lastDamageStringSizeArray) _index) (JR/i32 (- _x (:jm_getNextInt (this :f_myRandomFactory) _delta))) (JR/i32 (- _y _delta)) 0)
                (JR/className (jstatic_basicColorArrayIndexer))))
            (set ((this :f_lastDamage) _index) 0))
                (do (set _index (JR/i32 (- _index 1))))))))

(set jproto (table/setproto @{:jm_add jm_add :jm_paint jm_paint} DamageFloaters/jproto))


