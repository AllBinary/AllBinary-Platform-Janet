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
# package org.allbinary.animation.image

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "../../../../org/allbinary/animation/NullAnimationFactory" "jm_getFactoryInstance" args))
(defn- AnimationFactoryImageScaleUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/image/AnimationFactoryImageScaleUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- ScaleProperties/jstatic_instance [& args] (JR/call jfile "../../../../org/allbinary/media/ScaleProperties" "jstatic_instance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- AnimationFactoryInitializationVisitor/jnew_0 [& args] (JR/call jfile "./AnimationFactoryInitializationVisitor" "jnew_0" args))

# Java class BaseImageAnimationFactory
(var jproto nil)
(var jnew_7 nil)
(var jm_createFactoryBase nil)
(var jm_getInstance nil)
(var jm_getImage nil)
(var jm_getSequenceArray nil)
(var jm_setInitialScale nil)
(var jm_getAnimationFactoryInitializationVisitorP nil)
(var jm_getScalePropertiesP nil)
(var jm_toString nil)

    
(set jm_createFactoryBase (fn jm_createFactoryBase [_image _sequenceArray _width _height _animationBehaviorFactory]
    (label jreturn
        (return jreturn (jnew_7 _image _sequenceArray _width _height 0 0 _animationBehaviorFactory)))))
    
(set jnew_7 (fn jnew_7 [_image _sequenceArray _width _height _dx _dy _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "BaseImageAnimationFactory" :f_animationFactoryImageScaleUtil nil :f_image nil :f_animationBehaviorFactory nil :f_sequenceArray nil :f_animationFactoryInitializationVisitor nil :f_scaleProperties nil} jproto))
    (put this :f_animationFactoryImageScaleUtil (AnimationFactoryImageScaleUtil/jm_getInstance))
    
    
    
    
    (put this :f_scaleProperties (ScaleProperties/jstatic_instance))
        (set (this :f_animationFactoryInitializationVisitor) (AnimationFactoryInitializationVisitor/jnew_0))
        (set (this :f_image) _image)
        (set ((this :f_animationFactoryInitializationVisitor) :f_width) _width)
        (set ((this :f_animationFactoryInitializationVisitor) :f_height) _height)
        (set (this :f_animationBehaviorFactory) _animationBehaviorFactory)
        (set (this :f_sequenceArray) _sequenceArray)
        (set ((this :f_animationFactoryInitializationVisitor) :f_dx) _dx)
        (set ((this :f_animationFactoryInitializationVisitor) :f_dy) _dy)
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (return jreturn (JR/className (NullAnimationFactory/jm_getFactoryInstance))))))
    
(set jm_getImage (fn jm_getImage [this]
    (label jreturn
        (return jreturn (this :f_image)))))
    
(set jm_getSequenceArray (fn jm_getSequenceArray [this]
    (label jreturn
        (return jreturn (this :f_sequenceArray)))))
    
(set jm_setInitialScale (fn jm_setInitialScale [this _scaleProperties]
        (set (this :f_scaleProperties) _scaleProperties)
        (if ((this :f_scaleProperties) :f_shouldScale)
            (do
            (set ((this :f_scaleProperties) :f_scaleWidth) (JR/i32 (* ((this :f_animationFactoryInitializationVisitor) :f_width) ((this :f_scaleProperties) :f_scaleX))))
            (set ((this :f_scaleProperties) :f_scaleHeight) (JR/i32 (* ((this :f_animationFactoryInitializationVisitor) :f_height) ((this :f_scaleProperties) :f_scaleY)))))
            (do
            nil))))
    
(set jm_getAnimationFactoryInitializationVisitorP (fn jm_getAnimationFactoryInitializationVisitorP [this]
    (label jreturn
        (return jreturn (this :f_animationFactoryInitializationVisitor)))))
    
(set jm_getScalePropertiesP (fn jm_getScalePropertiesP [this]
    (label jreturn
        (return jreturn (this :f_scaleProperties)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _commonSeps (CommonSeps/jm_getInstance))
        (var _commonLabels (CommonLabels/jm_getInstance))
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer (JR/objectToString this))
        (:jm_append _stringBuffer (_commonLabels :f_HEIGHT_LABEL))
        (:jm_appendint _stringBuffer (:jm_getHeight (this :f_image)))
        (:jm_append _stringBuffer (_commonSeps :f_SPACE))
        (:jm_append _stringBuffer (:jm_toString (this :f_animationFactoryInitializationVisitor)))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_getInstance jm_getInstance :jm_getImage jm_getImage :jm_getSequenceArray jm_getSequenceArray :jm_setInitialScale jm_setInitialScale :jm_getAnimationFactoryInitializationVisitorP jm_getAnimationFactoryInitializationVisitorP :jm_getScalePropertiesP jm_getScalePropertiesP :jm_toString jm_toString})


