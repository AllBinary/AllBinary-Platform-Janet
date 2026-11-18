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
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- BasicColorSetUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/graphics/color/BasicColorSetUtil" "jm_getInstance" args))

# Java class Animation
(var jproto nil)
(var jnew_0 nil)
(var jm_setAlpha nil)
(var jm_nextFrame nil)
(var jm_paintXY nil)
(var jm_paintThreedXYZ nil)
(var jm_isThreed nil)
(var jm_getBasicColorP nil)
(var jm_setBasicColorP nil)
(var jm_setBackgroundBasicColorP nil)
(var jm_getChangeBasicColor nil)
(var jm_changeBasicColor nil)
(var jm_getChangeColor nil)
(var jm_getColor nil)
(var jm_setScale nil)
(var jm_setMaxScale nil)
(var jm_set nil)
(var jm_setDx nil)
(var jm_getDx nil)
(var jm_setDy nil)
(var jm_getDy nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "Animation" :f_basicSetColorUtil nil :f_basicColor nil :f_colorP 0 :f_changeBasicColorP nil :f_changeColorP 0 :f_alphaP 0} jproto))
    (put this :f_basicSetColorUtil (BasicColorSetUtil/jm_getInstance))
    (put this :f_basicColor ((BasicColorFactory/jm_getInstance) :f_WHITE))
    
    (put this :f_changeBasicColorP ((BasicColorFactory/jm_getInstance) :f_NULL_COLOR))
    
    
    this))
    
(set jm_setAlpha (fn jm_setAlpha [this _alpha]
        (set (this :f_alphaP) _alpha)))
    
(set jm_nextFrame (fn jm_nextFrame [this]
    nil))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (:jm_setBasicColorP3 (this :f_basicSetColorUtil) _graphics (:jm_getBasicColorP this) (:jm_getColor this))))
    
(set jm_paintThreedXYZ (fn jm_paintThreedXYZ [this _graphics _x _y _z]
    nil))
    
(set jm_isThreed (fn jm_isThreed [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (return jreturn (this :f_basicColor)))))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        (set (this :f_basicColor) _basicColor)
        (set (this :f_colorP) (:jm_intValue (this :f_basicColor)))))
    
(set jm_setBackgroundBasicColorP (fn jm_setBackgroundBasicColorP [this _basicColor]
    nil))
    
(set jm_getChangeBasicColor (fn jm_getChangeBasicColor [this]
    (label jreturn
        (return jreturn (this :f_changeBasicColorP)))))
    
(set jm_changeBasicColor (fn jm_changeBasicColor [this _basicColor]
        (set (this :f_changeBasicColorP) _basicColor)
        (set (this :f_changeColorP) (:jm_intValue (this :f_changeBasicColorP)))))
    
(set jm_getChangeColor (fn jm_getChangeColor [this]
    (label jreturn
        (return jreturn (this :f_changeColorP)))))
    
(set jm_getColor (fn jm_getColor [this]
    (label jreturn
        (return jreturn (this :f_colorP)))))
    
(set jm_setScale (fn jm_setScale [this _scaleX _scaleY]
    nil))
    
(set jm_setMaxScale (fn jm_setMaxScale [this _maxScaleX _maxScaleY]
    nil))
    
(set jm_set (fn jm_set [this _gl]
    nil))
    
(set jm_setDx (fn jm_setDx [this _dx]
    nil))
    
(set jm_getDx (fn jm_getDx [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_setDy (fn jm_setDy [this _dy]
    nil))
    
(set jm_getDy (fn jm_getDy [this]
    (label jreturn
        (return jreturn 0))))

(set jproto @{:jm_setAlpha jm_setAlpha :jm_nextFrame jm_nextFrame :jm_paintXY jm_paintXY :jm_paintThreedXYZ jm_paintThreedXYZ :jm_isThreed jm_isThreed :jm_getBasicColorP jm_getBasicColorP :jm_setBasicColorP jm_setBasicColorP :jm_setBackgroundBasicColorP jm_setBackgroundBasicColorP :jm_getChangeBasicColor jm_getChangeBasicColor :jm_changeBasicColor jm_changeBasicColor :jm_getChangeColor jm_getChangeColor :jm_getColor jm_getColor :jm_setScale jm_setScale :jm_setMaxScale jm_setMaxScale :jm_set jm_set :jm_setDx jm_setDx :jm_getDx jm_getDx :jm_setDy jm_setDy :jm_getDy jm_getDy})


