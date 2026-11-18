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
# package org.allbinary.game.layer.special

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Canvas/jstatic_UP [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_UP" args))
(defn- Canvas/jstatic_DOWN [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_DOWN" args))
(defn- Canvas/jstatic_RIGHT [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_RIGHT" args))
(defn- Canvas/jstatic_LEFT [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_LEFT" args))
(defn- Canvas/jstatic_KEY_NUM0 [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM0" args))
(defn- Canvas/jstatic_KEY_NUM5 [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM5" args))
(defn- SpecialUpGameInputProcessor/jnew_1 [& args] (JR/call jfile "./SpecialUpGameInputProcessor" "jnew_1" args))
(defn- SpecialDownGameInputProcessor/jnew_1 [& args] (JR/call jfile "./SpecialDownGameInputProcessor" "jnew_1" args))
(defn- SpecialRightGameInputProcessor/jnew_1 [& args] (JR/call jfile "./SpecialRightGameInputProcessor" "jnew_1" args))
(defn- SpecialLeftGameInputProcessor/jnew_1 [& args] (JR/call jfile "./SpecialLeftGameInputProcessor" "jnew_1" args))
(defn- Special1GameInputProcessor/jnew_1 [& args] (JR/call jfile "./Special1GameInputProcessor" "jnew_1" args))
(defn- Special3GameInputProcessor/jnew_1 [& args] (JR/call jfile "./Special3GameInputProcessor" "jnew_1" args))
(defn- SpecialAnalogUpGameInputProcessor/jnew_1 [& args] (JR/call jfile "./SpecialAnalogUpGameInputProcessor" "jnew_1" args))
(defn- SpecialAnalogDownGameInputProcessor/jnew_1 [& args] (JR/call jfile "./SpecialAnalogDownGameInputProcessor" "jnew_1" args))
(defn- SpecialAnalogRightGameInputProcessor/jnew_1 [& args] (JR/call jfile "./SpecialAnalogRightGameInputProcessor" "jnew_1" args))
(defn- SpecialAnalogLeftGameInputProcessor/jnew_1 [& args] (JR/call jfile "./SpecialAnalogLeftGameInputProcessor" "jnew_1" args))
(defn- SpecialAnalogLeftTriggerGameInputProcessor/jnew_1 [& args] (JR/call jfile "./SpecialAnalogLeftTriggerGameInputProcessor" "jnew_1" args))
(defn- SpecialAnalogRightTriggerGameInputProcessor/jnew_1 [& args] (JR/call jfile "./SpecialAnalogRightTriggerGameInputProcessor" "jnew_1" args))

# Java class AnalogInputBuilder
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_disable nil)
(var jm_enable nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AnalogInputBuilder"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_disable (fn jm_disable [this _inputProcessorArray _collidableDestroyableDamageableLayer]
        (set (_inputProcessorArray (Canvas/jstatic_UP)) (SpecialUpGameInputProcessor/jnew_1 _collidableDestroyableDamageableLayer))
        (set (_inputProcessorArray (Canvas/jstatic_DOWN)) (SpecialDownGameInputProcessor/jnew_1 _collidableDestroyableDamageableLayer))
        (set (_inputProcessorArray (Canvas/jstatic_RIGHT)) (SpecialRightGameInputProcessor/jnew_1 _collidableDestroyableDamageableLayer))
        (set (_inputProcessorArray (Canvas/jstatic_LEFT)) (SpecialLeftGameInputProcessor/jnew_1 _collidableDestroyableDamageableLayer))
        (set (_inputProcessorArray (Canvas/jstatic_KEY_NUM0)) (Special1GameInputProcessor/jnew_1 _collidableDestroyableDamageableLayer))
        (set (_inputProcessorArray (Canvas/jstatic_KEY_NUM5)) (Special3GameInputProcessor/jnew_1 _collidableDestroyableDamageableLayer))))
    
(set jm_enable (fn jm_enable [this _inputProcessorArray _collidableDestroyableDamageableLayer]
        (set (_inputProcessorArray (Canvas/jstatic_UP)) (SpecialAnalogUpGameInputProcessor/jnew_1 _collidableDestroyableDamageableLayer))
        (set (_inputProcessorArray (Canvas/jstatic_DOWN)) (SpecialAnalogDownGameInputProcessor/jnew_1 _collidableDestroyableDamageableLayer))
        (set (_inputProcessorArray (Canvas/jstatic_RIGHT)) (SpecialAnalogRightGameInputProcessor/jnew_1 _collidableDestroyableDamageableLayer))
        (set (_inputProcessorArray (Canvas/jstatic_LEFT)) (SpecialAnalogLeftGameInputProcessor/jnew_1 _collidableDestroyableDamageableLayer))
        (set (_inputProcessorArray (Canvas/jstatic_KEY_NUM0)) (SpecialAnalogLeftTriggerGameInputProcessor/jnew_1 _collidableDestroyableDamageableLayer))
        (set (_inputProcessorArray (Canvas/jstatic_KEY_NUM5)) (SpecialAnalogRightTriggerGameInputProcessor/jnew_1 _collidableDestroyableDamageableLayer))))

(set jproto @{:jm_disable jm_disable :jm_enable jm_enable})


