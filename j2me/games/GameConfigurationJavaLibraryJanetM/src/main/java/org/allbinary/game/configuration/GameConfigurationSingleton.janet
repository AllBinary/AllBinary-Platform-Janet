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
# package org.allbinary.game.configuration

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class GameConfigurationSingleton
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getInstanceByName nil)
(var jm_getOptionsBasicArrayList nil)
(var jm_add nil)
(var jm_getHashtable nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameConfigurationSingleton" :f_list nil :f_hashtable nil} jproto))
    
    
        (set (this :f_list) (BasicArrayListD/jnew_0))
        (set (this :f_hashtable) (:jm_createHashtable (StdUtil/jm_getInstance)))
    this))
    
(set jm_getInstanceByName (fn jm_getInstanceByName [this _name]
    (label jreturn
        (return jreturn (:jm_get (this :f_hashtable) _name)))))
    
(set jm_getOptionsBasicArrayList (fn jm_getOptionsBasicArrayList [this]
    (label jreturn
        (return jreturn (this :f_list)))))
    
(set jm_add (fn jm_add [this _gameConfiguration]
        (:jm_add (this :f_list) _gameConfiguration)))
    
(set jm_getHashtable (fn jm_getHashtable [this]
    (label jreturn
        (return jreturn (this :f_hashtable)))))

(set jproto @{:jm_getInstanceByName jm_getInstanceByName :jm_getOptionsBasicArrayList jm_getOptionsBasicArrayList :jm_add jm_add :jm_getHashtable jm_getHashtable})


