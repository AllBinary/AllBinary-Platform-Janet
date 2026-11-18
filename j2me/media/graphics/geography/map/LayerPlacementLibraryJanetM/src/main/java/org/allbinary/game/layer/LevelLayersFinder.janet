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
# package org.allbinary.game.layer

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/util/Enumeration :as Enumeration)
(defn- Layer/jstatic_ID [& args] (JR/call jfile "../../../../org/allbinary/layer/Layer" "jstatic_ID" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- EnumerationUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/util/EnumerationUtil" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)

# Java class LevelLayersFinder
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_get nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LevelLayersFinder" :f_enumerationUtil nil} jproto))
    (put this :f_enumerationUtil (EnumerationUtil/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_get (fn jm_get [this _hashtable]
    (label jreturn
        (var _smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
        (var _list (BasicArrayListD/jnew_0))
        (var _enumeration (:jm_keys _hashtable))
        (var _layerHashtableCanBeNull nil)
        (var _integerCanBeNull nil)
        (var _cachedIntegerCanBeNull nil)
        (do
            (while (:jm_hasMoreElements (this :f_enumerationUtil) _enumeration)
                (do
            (set _layerHashtableCanBeNull (:jm_get _hashtable (:jm_nextElement (this :f_enumerationUtil) _enumeration)))
            (set _integerCanBeNull (:jm_get _layerHashtableCanBeNull (Layer/jstatic_ID)))
            (set _cachedIntegerCanBeNull (:jm_getAt _smallIntegerSingletonFactory (:jm_intValue _integerCanBeNull)))
            (if (not (:jm_contains _list _cachedIntegerCanBeNull))
                (do
                (:jm_add _list _cachedIntegerCanBeNull))))))
        (return jreturn _list))))

(set jproto @{:jm_get jm_get})


