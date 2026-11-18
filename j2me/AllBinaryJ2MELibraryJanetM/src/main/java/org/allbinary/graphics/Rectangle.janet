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
# package org.allbinary.graphics

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))

# Java class Rectangle
(var jproto nil)
(var jnew_3 nil)
(var jm_getPoint nil)
(var jm_setPoint nil)
(var jm_getMaxX nil)
(var jm_getMaxY nil)
(var jm_getWidth nil)
(var jm_setWidth nil)
(var jm_getHeight nil)
(var jm_setHeight nil)
(var jm_toString nil)

    
(set jnew_3 (fn jnew_3 [_point _width _height]
    (var this (table/setproto @{:jclass "Rectangle" :f_point nil :f_width 0 :f_height 0} jproto))
    
    
    
        (set (this :f_point) _point)
        (set (this :f_width) _width)
        (set (this :f_height) _height)
    this))
    
(set jm_getPoint (fn jm_getPoint [this]
    (label jreturn
        (return jreturn (this :f_point)))))
    
(set jm_setPoint (fn jm_setPoint [this _point]
        (set (this :f_point) _point)))
    
(set jm_getMaxX (fn jm_getMaxX [this]
    (label jreturn
        (return jreturn (JR/i32 (+ (:jm_getX (this :f_point)) (this :f_width)))))))
    
(set jm_getMaxY (fn jm_getMaxY [this]
    (label jreturn
        (return jreturn (JR/i32 (+ (:jm_getY (this :f_point)) (this :f_height)))))))
    
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
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer (:jm_toString (:jm_getPoint this)))
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
        (:jm_append _stringBuffer ((CommonLabels/jm_getInstance) :f_WIDTH_LABEL))
        (:jm_appendint _stringBuffer (:jm_getWidth this))
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
        (:jm_append _stringBuffer ((CommonLabels/jm_getInstance) :f_HEIGHT_LABEL))
        (:jm_appendint _stringBuffer (:jm_getHeight this))
        (:jm_append _stringBuffer " MaxX: ")
        (:jm_appendint _stringBuffer (:jm_getMaxX this))
        (:jm_append _stringBuffer " MaxY: ")
        (:jm_appendint _stringBuffer (:jm_getMaxY this))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_getPoint jm_getPoint :jm_setPoint jm_setPoint :jm_getMaxX jm_getMaxX :jm_getMaxY jm_getMaxY :jm_getWidth jm_getWidth :jm_setWidth jm_setWidth :jm_getHeight jm_getHeight :jm_setHeight jm_setHeight :jm_toString jm_toString})


