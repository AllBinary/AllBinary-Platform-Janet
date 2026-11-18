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
# package org.allbinary.logic.math.vector

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicDecimal/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/BasicDecimal" "jnew_1" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- PositionStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/math/PositionStrings" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))

# Java class Vertex
(var jproto nil)
(var jnew_0 nil)
(var jm_toString nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "Vertex" :f_x nil :f_y nil :f_z nil} jproto))
    (put this :f_x (BasicDecimal/jnew_1 0))
    (put this :f_y (BasicDecimal/jnew_1 0))
    (put this :f_z (BasicDecimal/jnew_1 0))
    this))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (var _positionStrings (PositionStrings/jm_getInstance))
        (:jm_append _stringBuffer (_positionStrings :f_X_LABEL))
        (:jm_append _stringBuffer (:jm_toString (this :f_x)))
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
        (:jm_append _stringBuffer (_positionStrings :f_Y_LABEL))
        (:jm_append _stringBuffer (:jm_toString (this :f_y)))
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
        (:jm_append _stringBuffer (_positionStrings :f_Z_LABEL))
        (:jm_append _stringBuffer (:jm_toString (this :f_z)))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_toString jm_toString})


