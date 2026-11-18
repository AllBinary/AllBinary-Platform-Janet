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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GamePersistanceStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/GamePersistanceStrings" "jm_getInstance" args))
(import ../../../../org/allbinary/game/input/mapping/PersistentInputMapping :as PersistentInputMapping)
(defn- BasicTouchInputFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/button/BasicTouchInputFactory" "jm_getInstance" args))
(defn- TouchMotionGestureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" "jm_getInstance" args))
(defn- GameKeyFactory/jm_getInstance [& args] (JR/call jfile "./GameKeyFactory" "jm_getInstance" args))

# Java class MotionJ2MEDefaultGameInputMapping
(var jproto nil)
(var jnew_0 nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MotionJ2MEDefaultGameInputMapping"} jproto))
        (JR/superInit this (PersistentInputMapping/jnew_1 ((GamePersistanceStrings/jm_getInstance) :f_DEFAULT_INPUT_MAPPING_RECORD_ID)))
        (var _inputToGameKeyMapping (:jm_getInputMapping this))
        (var _gameKeyFactory (GameKeyFactory/jm_getInstance))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_UP) (_gameKeyFactory :f_KEY_NUM2))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_LEFT) (_gameKeyFactory :f_KEY_NUM4))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_RIGHT) (_gameKeyFactory :f_KEY_NUM6))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_DOWN) (_gameKeyFactory :f_KEY_NUM8))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM1) (_gameKeyFactory :f_GAME_A))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM3) (_gameKeyFactory :f_GAME_B))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM7) (_gameKeyFactory :f_GAME_C))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM9) (_gameKeyFactory :f_GAME_D))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_LEVEL_DOWN) (_gameKeyFactory :f_LEVEL_DOWN))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_LEVEL_UP) (_gameKeyFactory :f_LEVEL_UP))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_UP) (_gameKeyFactory :f_UP))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_DOWN) (_gameKeyFactory :f_DOWN))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_LEFT) (_gameKeyFactory :f_LEFT))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_RIGHT) (_gameKeyFactory :f_RIGHT))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_POUND) (_gameKeyFactory :f_KEY_POUND))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_STAR) (_gameKeyFactory :f_KEY_STAR))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM1) (_gameKeyFactory :f_KEY_NUM1))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM3) (_gameKeyFactory :f_KEY_NUM3))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM5) (_gameKeyFactory :f_KEY_NUM5))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM7) (_gameKeyFactory :f_KEY_NUM7))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM9) (_gameKeyFactory :f_KEY_NUM9))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM0) (_gameKeyFactory :f_KEY_NUM0))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM1) (_gameKeyFactory :f_FIRE))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_UP) ((TouchMotionGestureFactory/jm_getInstance) :f_UP))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_DOWN) ((TouchMotionGestureFactory/jm_getInstance) :f_DOWN))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_LEFT) ((TouchMotionGestureFactory/jm_getInstance) :f_LEFT))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_RIGHT) ((TouchMotionGestureFactory/jm_getInstance) :f_RIGHT))
        (var _basicTouchInputFactory (BasicTouchInputFactory/jm_getInstance))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_UP) (_basicTouchInputFactory :f_UP))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_LEFT) (_basicTouchInputFactory :f_LEFT))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_RIGHT) (_basicTouchInputFactory :f_RIGHT))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_DOWN) (_basicTouchInputFactory :f_DOWN))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM0) (_basicTouchInputFactory :f_SPECIAL_BUTTON_FIVE))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM7) (_basicTouchInputFactory :f_SPECIAL_BUTTON_FOUR))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM9) (_basicTouchInputFactory :f_SPECIAL_BUTTON_THREE))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM1) (_basicTouchInputFactory :f_SPECIAL_BUTTON_TWO))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM3) (_basicTouchInputFactory :f_SPECIAL_BUTTON_ONE))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM2) (_basicTouchInputFactory :f_SPECIAL_BUTTON_SIX))
    this))

(set jproto (table/setproto @{} PersistentInputMapping/jproto))


