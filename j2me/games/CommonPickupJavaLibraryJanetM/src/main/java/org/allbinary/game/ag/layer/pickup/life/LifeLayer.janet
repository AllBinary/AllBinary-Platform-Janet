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
# package org.allbinary.game.ag.layer.pickup.life

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- Rectangle/jnew_3 [& args] (JR/call jfile "../../../../../../../org/allbinary/graphics/Rectangle" "jnew_3" args))
(import ../../../../../../../org/allbinary/layer/AllBinaryLayer :as AllBinaryLayer)
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- ViewPosition/jm_getInstanceD [& args] (JR/call jfile "../../../../../../../org/allbinary/view/ViewPosition" "jm_getInstanceD" args))

# Java class LifeLayer
(var jproto nil)
(var jnew_0 nil)
(var jm_paint nil)
(var jm_visit nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LifeLayer"} jproto))
        (JR/superInit this (AllBinaryLayer/jnew_3 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Rectangle/jnew_3 ((PointFactory/jm_getInstance) :f_ZERO_ZERO) 0 0) (ViewPosition/jm_getInstanceD)))
    this))
    
(set jm_paint (fn jm_paint [this _graphics]
    nil))
    
(set jm_visit (fn jm_visit [this _lifeInterface]
        (:jm_add _lifeInterface (JR/i16 1))))

(set jproto (table/setproto @{:jm_paint jm_paint :jm_visit jm_visit} AllBinaryLayer/jproto))


