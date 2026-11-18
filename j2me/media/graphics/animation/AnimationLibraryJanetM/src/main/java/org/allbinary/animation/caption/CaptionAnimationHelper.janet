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
# package org.allbinary.animation.caption

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AnimationBehavior/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/animation/AnimationBehavior" "jm_getInstance" args))
(defn- NullAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "../../../../org/allbinary/animation/NullAnimationFactory" "jm_getFactoryInstance" args))
(defn- TextAnimation/jnew_2 [& args] (JR/call jfile "../../../../org/allbinary/animation/text/TextAnimation" "jnew_2" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(import ./CaptionAnimationHelperBase :as CaptionAnimationHelperBase)
(defn- CaptionAnimation/jnew_6 [& args] (JR/call jfile "./CaptionAnimation" "jnew_6" args))

# Java class CaptionAnimationHelper
(var jproto nil)
(var jnew_5 nil)
(var jm_isShowing nil)
(var jm_tick nil)
(var jm_update nil)
(var jm_paintXY nil)

    
(set jnew_5 (fn jnew_5 [_captionAnimation _captionDx _captionDy _dx _dy]
    (var this (table/setproto @{:jclass "CaptionAnimationHelper" :f_timeHelper nil :f_textAnimation nil :f_captionAnimation nil :f_animation nil} jproto))
    (put this :f_timeHelper (TimeDelayHelper/jnew_1 620))
    (put this :f_textAnimation (TextAnimation/jnew_2 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (AnimationBehavior/jm_getInstance)))
    
    (put this :f_animation (JR/className (NullAnimationFactory/jm_getFactoryInstance)))
    (JR/superInit this (CaptionAnimationHelperBase/jnew_0))
        (set (this :f_captionAnimation) (CaptionAnimation/jnew_6 _captionAnimation (this :f_textAnimation) _captionDx _captionDy _dx _dy))
    this))
    
(set jm_isShowing (fn jm_isShowing [this]
    (label jreturn
        (if (= (this :f_animation) (this :f_captionAnimation))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_tick (fn jm_tick [this]
        (if (:jm_isTime (this :f_timeHelper) ((GameTickTimeDelayHelperFactory/jm_getInstance) :f_startTime))
            (do
            (set (this :f_animation) (JR/className (NullAnimationFactory/jm_getFactoryInstance)))))))
    
(set jm_update (fn jm_update [this _message _basicColor]
        (:jm_setBasicColorP (this :f_textAnimation) _basicColor)
        (:jm_setText (this :f_textAnimation) _message)
        (set (this :f_animation) (this :f_captionAnimation))
        (:jm_setStartTimeTNT (this :f_timeHelper))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (:jm_paintXY (this :f_animation) _graphics _x _y)))

(set jproto (table/setproto @{:jm_isShowing jm_isShowing :jm_tick jm_tick :jm_update jm_update :jm_paintXY jm_paintXY} CaptionAnimationHelperBase/jproto))


