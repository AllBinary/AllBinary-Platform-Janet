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
# package org.allbinary.bounds

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./LayerBounds :as LayerBounds)

# Java class RectangleLayerBounds
(var jproto nil)
(var jnew_1 nil)
(var jm_visit nil)

    
(set jnew_1 (fn jnew_1 [_rectangle]
    (var this (table/setproto @{:jclass "RectangleLayerBounds"} jproto))
        (JR/superInit this (LayerBounds/jnew_1 _rectangle))
    this))
    
(set jm_visit (fn jm_visit [this _boundsVisitorInterface]
        (if (> (:jm_getX _boundsVisitorInterface) (:jm_getMaxX (this :f_rectangle)))
            (do
            (:jm_maxX _boundsVisitorInterface)))
        (if (> (:jm_getY _boundsVisitorInterface) (:jm_getMaxY (this :f_rectangle)))
            (do
            (:jm_maxY _boundsVisitorInterface)))
        (if (< (:jm_getX _boundsVisitorInterface) (JR/className (:jm_getPoint (this :f_rectangle))))
            (do
            (:jm_minX _boundsVisitorInterface)))
        (if (< (:jm_getY _boundsVisitorInterface) (JR/className (:jm_getPoint (this :f_rectangle))))
            (do
            (:jm_minY _boundsVisitorInterface)))))

(set jproto (table/setproto @{:jm_visit jm_visit} LayerBounds/jproto))


