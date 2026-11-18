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
# package org.allbinary.game.layer.pickup

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "../../../../../org/allbinary/animation/NullAnimationFactory" "jm_getFactoryInstance" args))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- Rectangle/jnew_3 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/Rectangle" "jnew_3" args))
(import ../../../../../org/allbinary/layer/AllBinaryLayer :as AllBinaryLayer)
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- ViewPosition/jm_getInstanceD [& args] (JR/call jfile "../../../../../org/allbinary/view/ViewPosition" "jm_getInstanceD" args))

# Java class IconLayer
(var jproto nil)
(var jcell_NULL_ICON_LAYER :jnone)
(var jstatic_NULL_ICON_LAYER nil)
(var jsetstatic_NULL_ICON_LAYER nil)
(var jnew_3 nil)
(var jm_paint nil)
(var jm_paintThreed nil)
(var jm_getAnimationInterface nil)

(set jstatic_NULL_ICON_LAYER (fn jstatic_NULL_ICON_LAYER []
  (when (= jcell_NULL_ICON_LAYER :jnone) (set jcell_NULL_ICON_LAYER (jnew_3 (JR/className (NullAnimationFactory/jm_getFactoryInstance)) 0 0)))
  jcell_NULL_ICON_LAYER))
(set jsetstatic_NULL_ICON_LAYER (fn jsetstatic_NULL_ICON_LAYER [value] (set jcell_NULL_ICON_LAYER value)))

    
(set jnew_3 (fn jnew_3 [_animationInterface _width _height]
    (var this (table/setproto @{:jclass "IconLayer" :f_animationInterface nil} jproto))
    
        (JR/superInit this (AllBinaryLayer/jnew_3 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Rectangle/jnew_3 ((PointFactory/jm_getInstance) :f_ZERO_ZERO) _width _height) (ViewPosition/jm_getInstanceD)))
        (set (this :f_animationInterface) _animationInterface)
    this))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_paintXY (this :f_animationInterface) _graphics (this :f_x) (this :f_y))))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
        (:jm_paintThreedXYZ (this :f_animationInterface) _graphics (this :f_x) (this :f_y) (this :f_z))))
    
(set jm_getAnimationInterface (fn jm_getAnimationInterface [this]
    (label jreturn
        (return jreturn (this :f_animationInterface)))))

(set jproto (table/setproto @{:jm_paint jm_paint :jm_paintThreed jm_paintThreed :jm_getAnimationInterface jm_getAnimationInterface} AllBinaryLayer/jproto))


