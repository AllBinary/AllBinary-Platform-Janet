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
(defn- PCKeyFactory/jm_getInstance [& args] (JR/call jfile "./PCKeyFactory" "jm_getInstance" args))
(defn- GameKeyFactory/jm_getInstance [& args] (JR/call jfile "./GameKeyFactory" "jm_getInstance" args))

# Java class DesktopDefaultGameInputMapping
(var jproto nil)
(var jnew_0 nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DesktopDefaultGameInputMapping"} jproto))
        (JR/superInit this (PersistentInputMapping/jnew_1 ((GamePersistanceStrings/jm_getInstance) :f_DEFAULT_INPUT_MAPPING_RECORD_ID)))
        (var _pcKeyFactory (PCKeyFactory/jm_getInstance))
        (var _inputToGameKeyMapping (:jm_getInputMapping this))
        (var _gameKeyFactory (GameKeyFactory/jm_getInstance))
        (var _touchMotionGestureFactory (TouchMotionGestureFactory/jm_getInstance))
        (var _basicTouchInputFactory (BasicTouchInputFactory/jm_getInstance))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_FIRE) (_pcKeyFactory :f_ENTER))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM1) (_pcKeyFactory :f_FOUR))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM1) (_pcKeyFactory :f__P))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM1) (_pcKeyFactory :f_p))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_UP) (_pcKeyFactory :f_DPAD_UP))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_DOWN) (_pcKeyFactory :f_DPAD_DOWN))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_LEFT) (_pcKeyFactory :f_DPAD_LEFT))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_RIGHT) (_pcKeyFactory :f_DPAD_RIGHT))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM7) (_pcKeyFactory :f__Y))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM9) (_pcKeyFactory :f__I))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_UP) (_pcKeyFactory :f__U))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_LEFT) (_pcKeyFactory :f__H))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_RIGHT) (_pcKeyFactory :f__J))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_DOWN) (_pcKeyFactory :f__N))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM5) (_pcKeyFactory :f__M))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM7) (_pcKeyFactory :f_y))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM9) (_pcKeyFactory :f_i))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_UP) (_pcKeyFactory :f_u))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_LEFT) (_pcKeyFactory :f_h))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_RIGHT) (_pcKeyFactory :f_j))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_DOWN) (_pcKeyFactory :f_n))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM5) (_pcKeyFactory :f_m))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM7) (_pcKeyFactory :f__Q))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM9) (_pcKeyFactory :f__E))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_UP) (_pcKeyFactory :f__W))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_LEFT) (_pcKeyFactory :f__A))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_RIGHT) (_pcKeyFactory :f__D))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_DOWN) (_pcKeyFactory :f__S))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM5) (_pcKeyFactory :f__X))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM7) (_pcKeyFactory :f_q))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM9) (_pcKeyFactory :f_e))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_UP) (_pcKeyFactory :f_w))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_LEFT) (_pcKeyFactory :f_a))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_RIGHT) (_pcKeyFactory :f_d))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_DOWN) (_pcKeyFactory :f_s))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM5) (_pcKeyFactory :f_x))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_UP) (_touchMotionGestureFactory :f_UP))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_DOWN) (_touchMotionGestureFactory :f_DOWN))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_LEFT) (_touchMotionGestureFactory :f_LEFT))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_RIGHT) (_touchMotionGestureFactory :f_RIGHT))
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
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM3) (_pcKeyFactory :f_THREE))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM0) (_pcKeyFactory :f_ZERO))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM0) (_pcKeyFactory :f_ONE))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM0) (_pcKeyFactory :f_SPACE))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_POUND) (_pcKeyFactory :f_DEL))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_POUND) (_pcKeyFactory :f_TWO))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_STAR) (_pcKeyFactory :f_ESCAPE))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_STAR) (_pcKeyFactory :f_STAR))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_LEVEL_DOWN) (_pcKeyFactory :f_COMMA))
        (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_LEVEL_UP) (_pcKeyFactory :f_PERIOD))
    this))

(set jproto (table/setproto @{} PersistentInputMapping/jproto))


