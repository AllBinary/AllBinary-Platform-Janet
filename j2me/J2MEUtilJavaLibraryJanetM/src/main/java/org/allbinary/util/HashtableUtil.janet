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
(import ../../../java/util/Enumeration :as Enumeration)
(defn- EnumerationUtil/jm_getInstance [& args] (JR/call jfile "./EnumerationUtil" "jm_getInstance" args))
(defn- BasicArrayListS/jnew_1 [& args] (JR/call jfile "./BasicArrayListS" "jnew_1" args))

# Java class HashtableUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_putAll nil)
(var jm_getKeysAsArray nil)
(var jm_getKeysAsList nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HashtableUtil" :f_enumerationUtil nil} jproto))
    (put this :f_enumerationUtil (EnumerationUtil/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_putAll (fn jm_putAll [this _fromHashtable _hashtable]
        (var _enumeration (:jm_keys _fromHashtable))
        (var _keyCanBeNull nil)
        (var _valueCanBeNull nil)
        (do
            (while (:jm_hasMoreElements (this :f_enumerationUtil) _enumeration)
                (do
            (set _keyCanBeNull (:jm_nextElement (this :f_enumerationUtil) _enumeration))
            (set _valueCanBeNull (:jm_get _hashtable _keyCanBeNull))
            (if (nil? _valueCanBeNull)
                (do
                nil)
                (do
                (:jm_put _hashtable _keyCanBeNull _valueCanBeNull))))))))
    
(set jm_getKeysAsArray (fn jm_getKeysAsArray [this _hashtable]
    (label jreturn
        (var _objectArray (array/new-filled (:jm_size _hashtable) nil))
        (var _index 0)
        (var _enumeration (:jm_keys _hashtable))
        (do
            (while (:jm_hasMoreElements (this :f_enumerationUtil) _enumeration)
                (do
            (set (_objectArray (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold)) (:jm_nextElement (this :f_enumerationUtil) _enumeration)))))
        (return jreturn _objectArray))))
    
(set jm_getKeysAsList (fn jm_getKeysAsList [this _hashtable]
    (label jreturn
        (var _list (BasicArrayListS/jnew_1 (:jm_size _hashtable)))
        (var _enumeration (:jm_keys _hashtable))
        (do
            (while (:jm_hasMoreElements (this :f_enumerationUtil) _enumeration)
                (do
            (:jm_add _list (:jm_nextElement (this :f_enumerationUtil) _enumeration)))))
        (return jreturn _list))))

(set jproto @{:jm_putAll jm_putAll :jm_getKeysAsArray jm_getKeysAsArray :jm_getKeysAsList jm_getKeysAsList})


