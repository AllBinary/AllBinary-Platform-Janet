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
# package org.allbinary.image

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AnimationFrameToImageUtil/jm_getInstance [& args] (JR/call jfile "./AnimationFrameToImageUtil" "jm_getInstance" args))

# Java class IndexedAnimationToImageArrayUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "IndexedAnimationToImageArrayUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [_width _height _sequentialAnimationInterface]
    (label jreturn
        (var _size (:jm_getAnimationSize _sequentialAnimationInterface))
        (var _imageArray (array/new-filled _size nil))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (:jm_setFrame _sequentialAnimationInterface _index)
            (set (_imageArray _index) (:jm_getInstanceWH (AnimationFrameToImageUtil/jm_getInstance) _width _height _sequentialAnimationInterface)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _imageArray))))

(set jproto @{})


