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
# package org.allbinary.math

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class RectangleCollisionUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_isCollision nil)
(var jm_isInside nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "RectangleCollisionUtil"} jproto))
    this))
    
(set jm_isCollision (fn jm_isCollision [this _rectX1 _rectY1 _rectX2 _rectY2 _rect2X1 _rect2Y1 _rect2X2 _rect2Y2]
    (label jreturn
        (if (or (or (or (>= _rect2X1 _rectX2) (>= _rect2Y1 _rectY2)) (<= _rect2X2 _rectX1)) (<= _rect2Y2 _rectY1))
            (do
            (return jreturn false))
            (do
            (return jreturn true))))))
    
(set jm_isInside (fn jm_isInside [this _rectX1 _rectY1 _rectX2 _rectY2 _x _y]
    (label jreturn
        (if (or (or (or (>= _x _rectX2) (>= _y _rectY2)) (<= _x _rectX1)) (<= _y _rectY1))
            (do
            (return jreturn false))
            (do
            (return jreturn true))))))

(set jproto @{:jm_isCollision jm_isCollision :jm_isInside jm_isInside})


