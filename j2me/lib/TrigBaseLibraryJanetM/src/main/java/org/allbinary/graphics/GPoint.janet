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
(defn- PositionStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/math/PositionStrings" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))

# Java class GPoint
(var jproto nil)
(var jcell_POINT_LABEL :jnone)
(var jstatic_POINT_LABEL nil)
(var jnew_3 nil)
(var jm_getInstance nil)
(var jm_getX nil)
(var jm_getY nil)
(var jm_getZ nil)
(var jm_getRawX nil)
(var jm_getRawY nil)
(var jm_getRawZ nil)
(var jm_toString nil)
(var jm_toStringStatic nil)

(set jstatic_POINT_LABEL (fn jstatic_POINT_LABEL []
  (when (= jcell_POINT_LABEL :jnone) (set jcell_POINT_LABEL "Point: "))
  jcell_POINT_LABEL))

    
(set jm_getInstance (fn jm_getInstance [_point]
    (label jreturn
        (return jreturn (jnew_3 (:jm_getX _point) (:jm_getY _point) (:jm_getZ _point))))))
    
(set jnew_3 (fn jnew_3 [_x _y _z]
    (var this (table/setproto @{:jclass "GPoint" :f_x 0 :f_y 0 :f_z 0} jproto))
    
    
    
        (set (this :f_x) _x)
        (set (this :f_y) _y)
        (set (this :f_z) _z)
    this))
    
(set jm_getX (fn jm_getX [this]
    (label jreturn
        (return jreturn (this :f_x)))))
    
(set jm_getY (fn jm_getY [this]
    (label jreturn
        (return jreturn (this :f_y)))))
    
(set jm_getZ (fn jm_getZ [this]
    (label jreturn
        (return jreturn (this :f_z)))))
    
(set jm_getRawX (fn jm_getRawX [this]
    (label jreturn
        (return jreturn (this :f_x)))))
    
(set jm_getRawY (fn jm_getRawY [this]
    (label jreturn
        (return jreturn (this :f_y)))))
    
(set jm_getRawZ (fn jm_getRawZ [this]
    (label jreturn
        (return jreturn (this :f_z)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (jm_toStringStatic (:jm_getX this) (:jm_getY this) (:jm_getZ this))))))
    
(set jm_toStringStatic (fn jm_toStringStatic [_x _y _z]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (var _positionStrings (PositionStrings/jm_getInstance))
        (:jm_append _stringBuffer (jstatic_POINT_LABEL))
        (:jm_append _stringBuffer (_positionStrings :f_X_LABEL))
        (:jm_appendint _stringBuffer _x)
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
        (:jm_append _stringBuffer (_positionStrings :f_Y_LABEL))
        (:jm_appendint _stringBuffer _y)
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
        (:jm_append _stringBuffer (_positionStrings :f_Z_LABEL))
        (:jm_appendint _stringBuffer _z)
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_getX jm_getX :jm_getY jm_getY :jm_getZ jm_getZ :jm_getRawX jm_getRawX :jm_getRawY jm_getRawY :jm_getRawZ jm_getRawZ :jm_toString jm_toString})


