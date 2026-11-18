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
# package org.allbinary.vector

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class VectorInfo
(var jproto nil)
(var jnew_4 nil)
(var jm_getWidth nil)
(var jm_setWidth nil)
(var jm_getHeight nil)
(var jm_setHeight nil)
(var jm_getPoints nil)
(var jm_setPoints nil)
(var jm_getTotalFrames nil)
(var jm_setTotalFrames nil)

    
(set jnew_4 (fn jnew_4 [_width _height _points _totalFrames]
    (var this (table/setproto @{:jclass "VectorInfo" :f_width 0 :f_height 0 :f_points nil :f_totalFrames 0} jproto))
    
    
    
    
        (set (this :f_width) _width)
        (set (this :f_height) _height)
        (set (this :f_points) _points)
        (set (this :f_totalFrames) _totalFrames)
    this))
    
(set jm_getWidth (fn jm_getWidth [this]
    (label jreturn
        (return jreturn (this :f_width)))))
    
(set jm_setWidth (fn jm_setWidth [this _width]
        (set (this :f_width) _width)))
    
(set jm_getHeight (fn jm_getHeight [this]
    (label jreturn
        (return jreturn (this :f_height)))))
    
(set jm_setHeight (fn jm_setHeight [this _height]
        (set (this :f_height) _height)))
    
(set jm_getPoints (fn jm_getPoints [this]
    (label jreturn
        (return jreturn (this :f_points)))))
    
(set jm_setPoints (fn jm_setPoints [this _points]
        (set (this :f_points) _points)))
    
(set jm_getTotalFrames (fn jm_getTotalFrames [this]
    (label jreturn
        (return jreturn (this :f_totalFrames)))))
    
(set jm_setTotalFrames (fn jm_setTotalFrames [this _totalFrames]
        (set (this :f_totalFrames) _totalFrames)))

(set jproto @{:jm_getWidth jm_getWidth :jm_setWidth jm_setWidth :jm_getHeight jm_getHeight :jm_setHeight jm_setHeight :jm_getPoints jm_getPoints :jm_setPoints jm_setPoints :jm_getTotalFrames jm_getTotalFrames :jm_setTotalFrames jm_setTotalFrames})


