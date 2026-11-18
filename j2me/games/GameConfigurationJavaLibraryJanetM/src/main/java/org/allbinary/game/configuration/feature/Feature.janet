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
# package org.allbinary.game.configuration.feature

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ChangedGameFeatureListener/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener" "jm_getInstance" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))

# Java class Feature
(var jproto nil)
(var jcell_hashtable :jnone)
(var jstatic_hashtable nil)
(var jsetstatic_hashtable nil)
(var jnew_1 nil)
(var jm_getInstance nil)
(var jm_add nil)
(var jm_toString nil)
(var jm_getName nil)

(set jstatic_hashtable (fn jstatic_hashtable []
  (when (= jcell_hashtable :jnone) (set jcell_hashtable (:jm_createHashtable (StdUtil/jm_getInstance))))
  jcell_hashtable))
(set jsetstatic_hashtable (fn jsetstatic_hashtable [value] (set jcell_hashtable value)))

    
(set jnew_1 (fn jnew_1 [_name]
    (var this (table/setproto @{:jclass "Feature" :f_name nil} jproto))
    
        (set (this :f_name) _name)
        (jm_add _name this)
        (:jm_add (ChangedGameFeatureListener/jm_getInstance) this)
    this))
    
(set jm_getInstance (fn jm_getInstance [_name]
    (label jreturn
        (return jreturn (JR/className (jstatic_hashtable))))))
    
(set jm_add (fn jm_add [_name _gameFeature]
        (JR/className (jstatic_hashtable))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_getName this)))))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))

(set jproto @{:jm_toString jm_toString :jm_getName jm_getName})


