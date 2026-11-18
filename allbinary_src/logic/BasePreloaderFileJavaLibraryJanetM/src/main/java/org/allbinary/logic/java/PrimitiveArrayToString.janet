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
# package org.allbinary.logic.java

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))

# Java class PrimitiveArrayToString
(var jproto nil)
(var jnew_0 nil)
(var jm_toString_1 nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PrimitiveArrayToString"} jproto))
    this))

    
(set jm_toString_1 (fn jm_toString_1 [_floats]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (do
            (var _index 0)
            (while (< _index (length _floats))
                (do
            (:jm_appendfloat _stringBuffer (_floats _index)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{})


