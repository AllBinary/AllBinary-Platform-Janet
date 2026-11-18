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
# package org.allbinary.game.ag.ai.tactical

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Canvas/jstatic_UP [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_UP" args))
(defn- Canvas/jstatic_DOWN [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_DOWN" args))
(defn- Canvas/jstatic_LEFT [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_LEFT" args))
(defn- Canvas/jstatic_RIGHT [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_RIGHT" args))
(defn- Canvas/jstatic_KEY_NUM1 [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM1" args))
(defn- Canvas/jstatic_KEY_NUM7 [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM7" args))
(defn- Canvas/jstatic_KEY_NUM9 [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM9" args))
(import ../../../../../../org/allbinary/game/ai/BasicAI :as BasicAI)
(defn- MyRandomFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/rand/MyRandomFactory" "jm_getInstance" args))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(import ../../../../../../java/lang/Integer :as Integer)

# Java class BasicRandomAI
(var jproto nil)
(var jnew_4 nil)
(var jm_processAI nil)

    
(set jnew_4 (fn jnew_4 [_ownerLayerInterface _gameInput _inputProbability _visitor]
    (var this (table/setproto @{:jclass "BasicRandomAI" :f_i_random 0 :f_inputProbability nil :f_visitor nil :f_keyArray nil :f_myRandomFactory nil} jproto))
    (put this :f_i_random 0)
    
    
    (put this :f_keyArray @[(Canvas/jstatic_UP) (Canvas/jstatic_DOWN) (Canvas/jstatic_LEFT) (Canvas/jstatic_RIGHT) (Canvas/jstatic_KEY_NUM1) (Canvas/jstatic_KEY_NUM7) (Canvas/jstatic_KEY_NUM9)])
    (put this :f_myRandomFactory (MyRandomFactory/jm_getInstance))
        (JR/superInit this (BasicAI/jnew_2 _ownerLayerInterface _gameInput))
        (set (this :f_inputProbability) _inputProbability)
        (set (this :f_visitor) _visitor)
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (if (JR/className (:jm_getTimeDelayHelper (this :f_inputProbability)))
            (do
            (set (this :f_i_random) (:jm_getAbsoluteNextInt (this :f_myRandomFactory) (:jm_getMax (this :f_inputProbability))))
            (var _repeat false)
            (var _repeatLikelyhoodIntegerArray (:jm_getRepeatLikelyhoodIntegerArray (this :f_inputProbability)))
            (if (and (not= (:jm_getLastKey this) (JR/i32 (- 1))) (>= (JR/className (_repeatLikelyhoodIntegerArray (:jm_getLastKey this))) (this :f_i_random)))
                (do
                (set _repeat true)))
            (if (not _repeat)
                (do
                (var _likelyhoodIntegerArray (:jm_getLikelyhoodIntegerArray (this :f_inputProbability)))
                (set (this :f_i_random) (:jm_getAbsoluteNextInt (this :f_myRandomFactory) (:jm_getMax (this :f_inputProbability))))
                (var _size (length (this :f_keyArray)))
                (var _likelyhoodIntegerKeyArray nil)
                (do
                    (var _index 0)
                    (var jbreak false)
                    (while (and (not jbreak) (< _index _size))
                        (label jcontinue
                    (var _key ((this :f_keyArray) _index))
                    (set _likelyhoodIntegerKeyArray (_likelyhoodIntegerArray _key))
                    (if (and (>= (length _likelyhoodIntegerArray) _key) (not (nil? (_likelyhoodIntegerKeyArray 0))))
                        (do
                        (if (and (>= (this :f_i_random) (JR/className (_likelyhoodIntegerKeyArray 0))) (< (this :f_i_random) (JR/className (_likelyhoodIntegerKeyArray 1))))
                            (do
                            (:jm_setLastKey this _key)
                            (do (set jbreak true) (return jcontinue)))))))
                        (unless jbreak (set _index (JR/i32 (+ _index 1))))))))
            (:jm_visit (this :f_visitor) this)))))

(set jproto (table/setproto @{:jm_processAI jm_processAI} BasicAI/jproto))


