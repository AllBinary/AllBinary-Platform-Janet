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
(defn- Canvas/jstatic_UP [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_UP" args))
(defn- Canvas/jstatic_DOWN [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_DOWN" args))
(defn- Canvas/jstatic_LEFT [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_LEFT" args))
(defn- Canvas/jstatic_RIGHT [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_RIGHT" args))
(defn- Canvas/jstatic_KEY_POUND [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_POUND" args))
(defn- Canvas/jstatic_KEY_STAR [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_STAR" args))
(defn- Canvas/jstatic_KEY_NUM0 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM0" args))
(defn- Canvas/jstatic_KEY_NUM1 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM1" args))
(defn- Canvas/jstatic_KEY_NUM2 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM2" args))
(defn- Canvas/jstatic_KEY_NUM3 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM3" args))
(defn- Canvas/jstatic_KEY_NUM4 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM4" args))
(defn- Canvas/jstatic_KEY_NUM5 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM5" args))
(defn- Canvas/jstatic_KEY_NUM6 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM6" args))
(defn- Canvas/jstatic_KEY_NUM7 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM7" args))
(defn- Canvas/jstatic_KEY_NUM8 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM8" args))
(defn- Canvas/jstatic_GAME_A [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_GAME_A" args))
(defn- Canvas/jstatic_GAME_B [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_GAME_B" args))
(defn- Canvas/jstatic_GAME_C [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_GAME_C" args))
(defn- Canvas/jstatic_GAME_D [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_GAME_D" args))
(defn- Canvas/jstatic_FIRE [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_FIRE" args))
(defn- Canvas/jstatic_KEY_NUM9 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM9" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- CommonPhoneStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonPhoneStrings" "jm_getInstance" args))
(defn- GameKey/jnew_2 [& args] (JR/call jfile "./GameKey" "jnew_2" args))
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "./InputFactory" "jm_getInstance" args))

# Java class GameKeyFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameKeyFactory" :f_NONE nil :f_UP nil :f_DOWN nil :f_LEFT nil :f_RIGHT nil :f_KEY_POUND nil :f_KEY_STAR nil :f_KEY_NUM0 nil :f_KEY_NUM1 nil :f_KEY_NUM2 nil :f_KEY_NUM3 nil :f_KEY_NUM4 nil :f_KEY_NUM5 nil :f_KEY_NUM6 nil :f_KEY_NUM7 nil :f_KEY_NUM8 nil :f_KEY_NUM9 nil :f_GAME_A nil :f_GAME_B nil :f_GAME_C nil :f_GAME_D nil :f_FIRE nil :f_LEVEL_DOWN nil :f_LEVEL_UP nil} jproto))
    (put this :f_NONE (GameKey/jnew_2 (JR/i32 (- ((InputFactory/jm_getInstance) :f_MAX) 1)) "None"))
    (put this :f_UP (GameKey/jnew_2 (Canvas/jstatic_UP) ((CommonPhoneStrings/jm_getInstance) :f_UP)))
    (put this :f_DOWN (GameKey/jnew_2 (Canvas/jstatic_DOWN) ((CommonPhoneStrings/jm_getInstance) :f_DOWN)))
    (put this :f_LEFT (GameKey/jnew_2 (Canvas/jstatic_LEFT) ((CommonPhoneStrings/jm_getInstance) :f_LEFT)))
    (put this :f_RIGHT (GameKey/jnew_2 (Canvas/jstatic_RIGHT) ((CommonPhoneStrings/jm_getInstance) :f_RIGHT)))
    (put this :f_KEY_POUND (GameKey/jnew_2 (Canvas/jstatic_KEY_POUND) "POUND"))
    (put this :f_KEY_STAR (GameKey/jnew_2 (Canvas/jstatic_KEY_STAR) "STAR"))
    (put this :f_KEY_NUM0 (GameKey/jnew_2 (Canvas/jstatic_KEY_NUM0) ((CommonPhoneStrings/jm_getInstance) :f_ZERO)))
    (put this :f_KEY_NUM1 (GameKey/jnew_2 (Canvas/jstatic_KEY_NUM1) ((CommonPhoneStrings/jm_getInstance) :f_ONE)))
    (put this :f_KEY_NUM2 (GameKey/jnew_2 (Canvas/jstatic_KEY_NUM2) ((CommonPhoneStrings/jm_getInstance) :f_TWO)))
    (put this :f_KEY_NUM3 (GameKey/jnew_2 (Canvas/jstatic_KEY_NUM3) ((CommonPhoneStrings/jm_getInstance) :f_THREE)))
    (put this :f_KEY_NUM4 (GameKey/jnew_2 (Canvas/jstatic_KEY_NUM4) ((CommonPhoneStrings/jm_getInstance) :f_FOUR)))
    (put this :f_KEY_NUM5 (GameKey/jnew_2 (Canvas/jstatic_KEY_NUM5) ((CommonPhoneStrings/jm_getInstance) :f_FIVE)))
    (put this :f_KEY_NUM6 (GameKey/jnew_2 (Canvas/jstatic_KEY_NUM6) ((CommonPhoneStrings/jm_getInstance) :f_SIX)))
    (put this :f_KEY_NUM7 (GameKey/jnew_2 (Canvas/jstatic_KEY_NUM7) ((CommonPhoneStrings/jm_getInstance) :f_SEVEN)))
    (put this :f_KEY_NUM8 (GameKey/jnew_2 (Canvas/jstatic_KEY_NUM8) ((CommonPhoneStrings/jm_getInstance) :f_EIGHT)))
    (put this :f_KEY_NUM9 (GameKey/jnew_2 (Canvas/jstatic_KEY_NUM9) ((CommonPhoneStrings/jm_getInstance) :f_NINE)))
    (put this :f_GAME_A (GameKey/jnew_2 (Canvas/jstatic_GAME_A) "Game A"))
    (put this :f_GAME_B (GameKey/jnew_2 (Canvas/jstatic_GAME_B) "Game B"))
    (put this :f_GAME_C (GameKey/jnew_2 (Canvas/jstatic_GAME_C) "Game C"))
    (put this :f_GAME_D (GameKey/jnew_2 (Canvas/jstatic_GAME_D) "Game D"))
    (put this :f_FIRE (GameKey/jnew_2 (Canvas/jstatic_FIRE) ((CommonPhoneStrings/jm_getInstance) :f_FIRE)))
    (put this :f_LEVEL_DOWN (GameKey/jnew_2 (JR/i32 (+ (Canvas/jstatic_KEY_NUM9) 1)) "Cheat Level Up"))
    (put this :f_LEVEL_UP (GameKey/jnew_2 (JR/i32 (+ (Canvas/jstatic_KEY_NUM9) 2)) "Cheat Level Down"))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))

(set jproto @{})


