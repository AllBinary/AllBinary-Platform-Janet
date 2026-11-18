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
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "./PointFactory" "jm_getInstance" args))

# Java class RelativeRelationship
(var jproto nil)
(var jcell_NULL_RELATIVE_RELATIONSHIP :jnone)
(var jstatic_NULL_RELATIVE_RELATIONSHIP nil)
(var jsetstatic_NULL_RELATIVE_RELATIONSHIP nil)
(var jnew_2 nil)
(var jm_getX nil)
(var jm_getY nil)
(var jm_getZ nil)
(var jm_getTypesAllowedList nil)
(var jm_setTypesAllowedList nil)

(set jstatic_NULL_RELATIVE_RELATIONSHIP (fn jstatic_NULL_RELATIVE_RELATIONSHIP []
  (when (= jcell_NULL_RELATIVE_RELATIONSHIP :jnone) (set jcell_NULL_RELATIVE_RELATIONSHIP (jnew_2 ((PointFactory/jm_getInstance) :f_ZERO_ZERO) (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))))
  jcell_NULL_RELATIVE_RELATIONSHIP))
(set jsetstatic_NULL_RELATIVE_RELATIONSHIP (fn jsetstatic_NULL_RELATIVE_RELATIONSHIP [value] (set jcell_NULL_RELATIVE_RELATIONSHIP value)))

    
(set jnew_2 (fn jnew_2 [_point _typesAllowedList]
    (var this (table/setproto @{:jclass "RelativeRelationship" :f_typesAllowedList nil :f_x 0 :f_y 0 :f_z 0} jproto))
    
    
    
    
        (set (this :f_x) (:jm_getX _point))
        (set (this :f_y) (:jm_getY _point))
        (set (this :f_z) (:jm_getZ _point))
        (set (this :f_typesAllowedList) _typesAllowedList)
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
    
(set jm_getTypesAllowedList (fn jm_getTypesAllowedList [this]
    (label jreturn
        (return jreturn (this :f_typesAllowedList)))))
    
(set jm_setTypesAllowedList (fn jm_setTypesAllowedList [this _typesAllowedList]
        (set (this :f_typesAllowedList) _typesAllowedList)))

(set jproto @{:jm_getX jm_getX :jm_getY jm_getY :jm_getZ jm_getZ :jm_getTypesAllowedList jm_getTypesAllowedList :jm_setTypesAllowedList jm_setTypesAllowedList})


