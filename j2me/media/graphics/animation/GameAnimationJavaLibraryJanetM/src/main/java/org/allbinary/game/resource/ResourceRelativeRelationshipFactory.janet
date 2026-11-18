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
# package org.allbinary.game.resource

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))

# Java class ResourceRelativeRelationshipFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_getResourceRelativeRelationshipList nil)
(var jm_addResourceRelativeRelationship nil)
(var jm_isLoadingLevel nil)
(var jm_isFeature nil)
(var jm_setInitialized nil)
(var jm_isInitialized nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ResourceRelativeRelationshipFactory" :f_basicArrayListUtil nil :f_hashtable nil :f_initialized false} jproto))
    (put this :f_basicArrayListUtil (BasicArrayListUtil/jm_getInstance))
    (put this :f_hashtable (:jm_createHashtable (StdUtil/jm_getInstance)))
    
    this))

    
(set jm_init (fn jm_init [this _level]
        (:jm_setInitialized this true)))
    
(set jm_getResourceRelativeRelationshipList (fn jm_getResourceRelativeRelationshipList [this _resource]
    (label jreturn
        (var _listCanBeNull (:jm_get (this :f_hashtable) _resource))
        (if (nil? _listCanBeNull)
            (do
            (return jreturn (:jm_getImmutableInstance (this :f_basicArrayListUtil)))))
        (return jreturn _listCanBeNull))))
    
(set jm_addResourceRelativeRelationship (fn jm_addResourceRelativeRelationship [this _resource _hardPoint]
        (var _list (:jm_getResourceRelativeRelationshipList this _resource))
        (if (= _list (:jm_getImmutableInstance (this :f_basicArrayListUtil)))
            (do
            (set _list (BasicArrayListD/jnew_0))))
        (:jm_add _list _hardPoint)
        (:jm_put (this :f_hashtable) _resource _list)))
    
(set jm_isLoadingLevel (fn jm_isLoadingLevel [this _level]
    (label jreturn
        (return jreturn false))))
    
(set jm_isFeature (fn jm_isFeature [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_setInitialized (fn jm_setInitialized [this _initialized]
        (set (this :f_initialized) _initialized)))
    
(set jm_isInitialized (fn jm_isInitialized [this]
    (label jreturn
        (return jreturn (this :f_initialized)))))

(set jproto @{:jm_init jm_init :jm_getResourceRelativeRelationshipList jm_getResourceRelativeRelationshipList :jm_addResourceRelativeRelationship jm_addResourceRelativeRelationship :jm_isLoadingLevel jm_isLoadingLevel :jm_isFeature jm_isFeature :jm_setInitialized jm_setInitialized :jm_isInitialized jm_isInitialized})


