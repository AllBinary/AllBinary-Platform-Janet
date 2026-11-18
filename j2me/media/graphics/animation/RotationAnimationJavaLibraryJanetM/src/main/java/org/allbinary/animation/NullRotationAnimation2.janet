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
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(defn- AngleInfo/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/math/AngleInfo" "jm_getInstance" args))
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))
(import ./NullRotationAnimation :as NullRotationAnimation)
(defn- IndexedAnimationBehavior/jnew_2 [& args] (JR/call jfile "./IndexedAnimationBehavior" "jnew_2" args))

# Java class NullRotationAnimation2
(var jproto nil)
(var jnew_0 nil)
(var jm_paintXY nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullRotationAnimation2"} jproto))
        (JR/superInit this (NullRotationAnimation/jnew_3 (AngleInfo/jm_getInstance ((AngleFactory/jm_getInstance) :f_QUARTER_TOTAL_ANGLE)) (CircularIndexUtil/jm_createInstance 4) (IndexedAnimationBehavior/jnew_2 1 250)))
    this))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
    nil))

(set jproto (table/setproto @{:jm_paintXY jm_paintXY} NullRotationAnimation/jproto))


