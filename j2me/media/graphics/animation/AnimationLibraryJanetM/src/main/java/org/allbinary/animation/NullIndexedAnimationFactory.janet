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
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullIndexedAnimationInner/jnew_0 [& args] (JR/call jfile "./NullIndexedAnimationInner" "jnew_0" args))

# Java class NullIndexedAnimationFactory
(var jproto nil)
(var jcell_NULL_INDEXED_ANIMATION_ARRAY :jnone)
(var jstatic_NULL_INDEXED_ANIMATION_ARRAY nil)
(var jsetstatic_NULL_INDEXED_ANIMATION_ARRAY nil)
(var jcell_NULL_INDEXED_ANIMATION_FACTORY :jnone)
(var jstatic_NULL_INDEXED_ANIMATION_FACTORY nil)
(var jsetstatic_NULL_INDEXED_ANIMATION_FACTORY nil)
(var jnew_0 nil)
(var jm_getFactoryInstance nil)
(var jm_getInstance nil)
(var jm_getInstanceAnimation nil)
(var jm_setInitialScale nil)

(set jstatic_NULL_INDEXED_ANIMATION_ARRAY (fn jstatic_NULL_INDEXED_ANIMATION_ARRAY []
  (when (= jcell_NULL_INDEXED_ANIMATION_ARRAY :jnone) (set jcell_NULL_INDEXED_ANIMATION_ARRAY (array/new-filled 0 nil)))
  jcell_NULL_INDEXED_ANIMATION_ARRAY))
(set jsetstatic_NULL_INDEXED_ANIMATION_ARRAY (fn jsetstatic_NULL_INDEXED_ANIMATION_ARRAY [value] (set jcell_NULL_INDEXED_ANIMATION_ARRAY value)))

(set jstatic_NULL_INDEXED_ANIMATION_FACTORY (fn jstatic_NULL_INDEXED_ANIMATION_FACTORY []
  (when (= jcell_NULL_INDEXED_ANIMATION_FACTORY :jnone) (set jcell_NULL_INDEXED_ANIMATION_FACTORY (jnew_0)))
  jcell_NULL_INDEXED_ANIMATION_FACTORY))
(set jsetstatic_NULL_INDEXED_ANIMATION_FACTORY (fn jsetstatic_NULL_INDEXED_ANIMATION_FACTORY [value] (set jcell_NULL_INDEXED_ANIMATION_FACTORY value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullIndexedAnimationFactory" :f_NULL_ANIMATION nil} jproto))
    (put this :f_NULL_ANIMATION (NullIndexedAnimationInner/jnew_0))
    this))
    
(set jm_getFactoryInstance (fn jm_getFactoryInstance []
    (label jreturn
        (return jreturn (jstatic_NULL_INDEXED_ANIMATION_FACTORY)))))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (return jreturn (this :f_NULL_ANIMATION)))))
    
(set jm_getInstanceAnimation (fn jm_getInstanceAnimation [this _animationInterface]
    (label jreturn
        (return jreturn (this :f_NULL_ANIMATION)))))
    
(set jm_setInitialScale (fn jm_setInitialScale [this _scaleProperties]
    nil))

(set jproto @{:jm_getInstance jm_getInstance :jm_getInstanceAnimation jm_getInstanceAnimation :jm_setInitialScale jm_setInitialScale})


