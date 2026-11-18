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
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- RelativeLayerRelationship/jnew_3 [& args] (JR/call jfile "../../../../org/allbinary/layer/relationship/RelativeLayerRelationship" "jnew_3" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))
(import ./FeaturedResourceFactory :as FeaturedResourceFactory)

# Java class FeaturedResourceRelativeRelationshipFactory
(var jproto nil)
(var jcell_INSTANCE :jnone)
(var jstatic_INSTANCE nil)
(var jsetstatic_INSTANCE nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getRelativeRelationshipList nil)
(var jm_duplicate nil)

(set jstatic_INSTANCE (fn jstatic_INSTANCE []
  (when (= jcell_INSTANCE :jnone) (set jcell_INSTANCE (jnew_0)))
  jcell_INSTANCE))
(set jsetstatic_INSTANCE (fn jsetstatic_INSTANCE [value] (set jcell_INSTANCE value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "FeaturedResourceRelativeRelationshipFactory" :f_basicArrayListUtil nil} jproto))
    (put this :f_basicArrayListUtil (BasicArrayListUtil/jm_getInstance))
    (JR/superInit this (FeaturedResourceFactory/jnew_0))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_INSTANCE)))))
    
(set jm_getRelativeRelationshipList (fn jm_getRelativeRelationshipList [this _resource _layer]
    (label jreturn
        (var _featureReleaseList (:jm_getList this))
        (var _size (JR/className (:jm_getList this)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _featureInterface ((_featureReleaseList :f_objectArray) _index))
            (if (:jm_isFeature _featureInterface)
                (do
                (var _list (:jm_getResourceRelativeRelationshipList _featureInterface _resource))
                (if (not= _list (:jm_getImmutableInstance (this :f_basicArrayListUtil)))
                    (do
                    (return jreturn (:jm_duplicate this _list _layer)))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (error (JR/newException "Exception" (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Not available for current feature selection or Resource: ") _resource)))))))
    
(set jm_duplicate (fn jm_duplicate [this _list _layer]
    (label jreturn
        (var _pointFactory (PointFactory/jm_getInstance))
        (var _newList (BasicArrayListD/jnew_0))
        (var _size (:jm_size _list))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _relativeRelationship ((_list :f_objectArray) _index))
            (:jm_add _newList (RelativeLayerRelationship/jnew_3 _layer (:jm_createXY _pointFactory (:jm_getX _relativeRelationship) (:jm_getY _relativeRelationship)) (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _newList))))

(set jproto (table/setproto @{:jm_getRelativeRelationshipList jm_getRelativeRelationshipList :jm_duplicate jm_duplicate} FeaturedResourceFactory/jproto))


