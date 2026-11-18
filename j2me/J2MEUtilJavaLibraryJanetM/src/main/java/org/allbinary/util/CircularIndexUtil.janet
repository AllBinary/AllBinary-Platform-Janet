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
# package org.allbinary.util

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))

# Java class CircularIndexUtil
(var jproto nil)
(var jcell_NULL_CIRCULAR_INDEX_UTIL :jnone)
(var jstatic_NULL_CIRCULAR_INDEX_UTIL nil)
(var jsetstatic_NULL_CIRCULAR_INDEX_UTIL nil)
(var jnew_2 nil)
(var jm_next nil)
(var jm_previous nil)
(var jm_setIndex nil)
(var jm_getIndex nil)
(var jm_createInstance nil)
(var jm_createInstanceAt nil)
(var jm_setSize nil)
(var jm_getSize nil)
(var jm_toString nil)

(set jstatic_NULL_CIRCULAR_INDEX_UTIL (fn jstatic_NULL_CIRCULAR_INDEX_UTIL []
  (when (= jcell_NULL_CIRCULAR_INDEX_UTIL :jnone) (set jcell_NULL_CIRCULAR_INDEX_UTIL (jnew_2 0 0)))
  jcell_NULL_CIRCULAR_INDEX_UTIL))
(set jsetstatic_NULL_CIRCULAR_INDEX_UTIL (fn jsetstatic_NULL_CIRCULAR_INDEX_UTIL [value] (set jcell_NULL_CIRCULAR_INDEX_UTIL value)))

    
(set jnew_2 (fn jnew_2 [_index _size]
    (var this (table/setproto @{:jclass "CircularIndexUtil" :f_index 0 :f_lastIndex 0 :f_size 0} jproto))
    (put this :f_index 0)
    (put this :f_lastIndex 0)
    (put this :f_size 0)
        (:jm_setSize this _size)
        (:jm_setIndex this _index)
    this))
    
(set jm_next (fn jm_next [this]
    (label jreturn
        (if (>= (this :f_index) (this :f_lastIndex))
            (do
            (set (this :f_index) 0))
            (do
            (set (this :f_index) (JR/i32 (+ (this :f_index) 1)))))
        (return jreturn (this :f_index)))))
    
(set jm_previous (fn jm_previous [this]
    (label jreturn
        (if (< (this :f_index) 1)
            (do
            (set (this :f_index) (this :f_lastIndex)))
            (do
            (set (this :f_index) (JR/i32 (- (this :f_index) 1)))))
        (return jreturn (this :f_index)))))
    
(set jm_setIndex (fn jm_setIndex [this _index]
    (label jreturn
        (if (> _index (this :f_lastIndex))
            (do
            (return jreturn)))
        (set (this :f_index) _index))))
    
(set jm_getIndex (fn jm_getIndex [this]
    (label jreturn
        (return jreturn (this :f_index)))))
    
(set jm_createInstance (fn jm_createInstance [_max]
    (label jreturn
        (return jreturn (jnew_2 0 _max)))))
    
(set jm_createInstanceAt (fn jm_createInstanceAt [_index _max]
    (label jreturn
        (return jreturn (jnew_2 _index _max)))))
    
(set jm_setSize (fn jm_setSize [this _size]
        (set (this :f_size) _size)
        (set (this :f_lastIndex) (JR/i32 (- _size 1)))
        (set (this :f_index) 0)))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn (this :f_size)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_toString (:jm_appendint (:jm_append (:jm_appendint (:jm_append (:jm_appendint (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_INDEX_LABEL)) (this :f_index)) "lastIndex: ") (this :f_lastIndex)) "size: ") (this :f_size)))))))

(set jproto @{:jm_next jm_next :jm_previous jm_previous :jm_setIndex jm_setIndex :jm_getIndex jm_getIndex :jm_setSize jm_setSize :jm_getSize jm_getSize :jm_toString jm_toString})


