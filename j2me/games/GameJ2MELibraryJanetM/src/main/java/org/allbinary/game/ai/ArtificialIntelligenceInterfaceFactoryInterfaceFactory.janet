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
# package org.allbinary.game.ai

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)
(defn- BasicAI/jstatic_ID [& args] (JR/call jfile "./BasicAI" "jstatic_ID" args))

# Java class ArtificialIntelligenceInterfaceFactoryInterfaceFactory
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_clear nil)
(var jm_getInstance nil)
(var jm_getInstanceFromCollection nil)
(var jm_add nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ArtificialIntelligenceInterfaceFactoryInterfaceFactory" :f_list nil} jproto))
    (put this :f_list (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))
    this))

    
(set jm_clear (fn jm_clear [this]
        (set (this :f_list) (BasicArrayListD/jnew_0))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jm_getInstanceFromCollection (fn jm_getInstanceFromCollection [this _hashtable]
    (label jreturn
        (var _typeInteger (:jm_get _hashtable (BasicAI/jstatic_ID)))
        (var _type (:jm_intValue _typeInteger))
        (var _artificialIntelligenceInterfaceFactoryInterface (((this :f_list) :f_objectArray) (JR/i32 (- _type 1))))
        (return jreturn _artificialIntelligenceInterfaceFactoryInterface))))
    
(set jm_add (fn jm_add [this _artificialIntelligenceInterfaceFactoryInterface]
        (:jm_add (this :f_list) _artificialIntelligenceInterfaceFactoryInterface)))

(set jproto @{:jm_clear jm_clear :jm_getInstanceFromCollection jm_getInstanceFromCollection :jm_add jm_add})


