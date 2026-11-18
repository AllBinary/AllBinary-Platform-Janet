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
# package org.allbinary.game.ag.ai

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Canvas/jstatic_UP [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_UP" args))
(defn- Canvas/jstatic_DOWN [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_DOWN" args))
(defn- Canvas/jstatic_LEFT [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_LEFT" args))
(defn- Canvas/jstatic_RIGHT [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_RIGHT" args))
(defn- Canvas/jstatic_KEY_NUM7 [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM7" args))
(defn- Canvas/jstatic_KEY_NUM9 [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM9" args))
(defn- Canvas/jstatic_KEY_NUM1 [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM1" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- NoTimeDelayHelper/jstatic_SINGLETON [& args] (JR/call jfile "../../../../../org/allbinary/time/NoTimeDelayHelper" "jstatic_SINGLETON" args))
(import ../../../../../java/lang/Integer :as Integer)
(defn- InputProbability/jnew_4 [& args] (JR/call jfile "./InputProbability" "jnew_4" args))

# Java class BasicProbabilityAIDataFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicProbabilityAIDataFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this]
    (label jreturn
        (var _likelyhoodIntegerArray (seq [jindex1 :range [0 (JR/i32 (+ (Canvas/jstatic_KEY_NUM9) 1))]] (array/new-filled 2 nil)))
        (var _smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
        (set ((_likelyhoodIntegerArray (Canvas/jstatic_UP)) 0) (:jm_getAt _smallIntegerSingletonFactory 0))
        (set ((_likelyhoodIntegerArray (Canvas/jstatic_UP)) 1) (:jm_getAt _smallIntegerSingletonFactory 10))
        (set ((_likelyhoodIntegerArray (Canvas/jstatic_DOWN)) 0) (:jm_getAt _smallIntegerSingletonFactory 10))
        (set ((_likelyhoodIntegerArray (Canvas/jstatic_DOWN)) 1) (:jm_getAt _smallIntegerSingletonFactory 14))
        (set ((_likelyhoodIntegerArray (Canvas/jstatic_LEFT)) 0) (:jm_getAt _smallIntegerSingletonFactory 14))
        (set ((_likelyhoodIntegerArray (Canvas/jstatic_LEFT)) 1) (:jm_getAt _smallIntegerSingletonFactory 18))
        (set ((_likelyhoodIntegerArray (Canvas/jstatic_RIGHT)) 0) (:jm_getAt _smallIntegerSingletonFactory 18))
        (set ((_likelyhoodIntegerArray (Canvas/jstatic_RIGHT)) 1) (:jm_getAt _smallIntegerSingletonFactory 22))
        (set ((_likelyhoodIntegerArray (Canvas/jstatic_KEY_NUM7)) 0) (:jm_getAt _smallIntegerSingletonFactory 22))
        (set ((_likelyhoodIntegerArray (Canvas/jstatic_KEY_NUM7)) 1) (:jm_getAt _smallIntegerSingletonFactory 26))
        (set ((_likelyhoodIntegerArray (Canvas/jstatic_KEY_NUM9)) 0) (:jm_getAt _smallIntegerSingletonFactory 26))
        (set ((_likelyhoodIntegerArray (Canvas/jstatic_KEY_NUM9)) 1) (:jm_getAt _smallIntegerSingletonFactory 30))
        (set ((_likelyhoodIntegerArray (Canvas/jstatic_KEY_NUM1)) 0) (:jm_getAt _smallIntegerSingletonFactory 30))
        (set ((_likelyhoodIntegerArray (Canvas/jstatic_KEY_NUM1)) 1) (:jm_getAt _smallIntegerSingletonFactory 40))
        (var _repeatLikelyhoodIntegerArray (array/new-filled (JR/i32 (+ (Canvas/jstatic_KEY_NUM9) 1)) nil))
        (set (_repeatLikelyhoodIntegerArray (Canvas/jstatic_UP)) (:jm_getAt _smallIntegerSingletonFactory 0))
        (set (_repeatLikelyhoodIntegerArray (Canvas/jstatic_DOWN)) (:jm_getAt _smallIntegerSingletonFactory 0))
        (set (_repeatLikelyhoodIntegerArray (Canvas/jstatic_LEFT)) (:jm_getAt _smallIntegerSingletonFactory 0))
        (set (_repeatLikelyhoodIntegerArray (Canvas/jstatic_RIGHT)) (:jm_getAt _smallIntegerSingletonFactory 0))
        (set (_repeatLikelyhoodIntegerArray (Canvas/jstatic_KEY_NUM7)) (:jm_getAt _smallIntegerSingletonFactory 0))
        (set (_repeatLikelyhoodIntegerArray (Canvas/jstatic_KEY_NUM9)) (:jm_getAt _smallIntegerSingletonFactory 0))
        (set (_repeatLikelyhoodIntegerArray (Canvas/jstatic_KEY_NUM1)) (:jm_getAt _smallIntegerSingletonFactory 10))
        (var _inputProbability (InputProbability/jnew_4 _likelyhoodIntegerArray _repeatLikelyhoodIntegerArray 42 (NoTimeDelayHelper/jstatic_SINGLETON)))
        (return jreturn (:jm_toHashtable _inputProbability)))))

(set jproto @{:jm_getInstance jm_getInstance})


