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
(defn- PositionStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/PositionStrings" "jm_getInstance" args))
(defn- CommonPhoneStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonPhoneStrings" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- ABKeyEventWrapper/jm_getInstance [& args] (JR/call jfile "./ABKeyEventWrapper" "jm_getInstance" args))
(defn- PCGameKey/jnew_2 [& args] (JR/call jfile "./PCGameKey" "jnew_2" args))

# Java class PCKeyFactory
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_isSubmission nil)
(var jm_isDelete nil)
(var jm_isBackSpace nil)
(var jm_isUp nil)
(var jm_isDown nil)
(var jm_isLeft nil)
(var jm_isRight nil)
(var jm_isEnter nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PCKeyFactory" :f_keyEventWrapper nil :f_UNKNOWN nil :f_ENTER nil :f__A nil :f__B nil :f__C nil :f__D nil :f__E nil :f__F nil :f__G nil :f__H nil :f__I nil :f__J nil :f__K nil :f__L nil :f__M nil :f__N nil :f__O nil :f__P nil :f__Q nil :f__R nil :f__S nil :f__T nil :f__U nil :f__V nil :f__W nil :f__X nil :f__Y nil :f__Z nil :f_a nil :f_b nil :f_c nil :f_d nil :f_e nil :f_f nil :f_g nil :f_h nil :f_i nil :f_j nil :f_k nil :f_l nil :f_m nil :f_n nil :f_o nil :f_p nil :f_q nil :f_r nil :f_s nil :f_t nil :f_u nil :f_v nil :f_w nil :f_x nil :f_y nil :f_z nil :f_ZERO nil :f_ONE nil :f_TWO nil :f_THREE nil :f_FOUR nil :f_FIVE nil :f_SIX nil :f_SEVEN nil :f_EIGHT nil :f_NINE nil :f_DPAD_UP nil :f_DPAD_DOWN nil :f_DPAD_LEFT nil :f_DPAD_RIGHT nil :f_DPAD_UP2 nil :f_DPAD_DOWN2 nil :f_DPAD_LEFT2 nil :f_DPAD_RIGHT2 nil :f_COMMA nil :f_SPACE nil :f_DEL nil :f_STAR nil :f_QUESTION nil :f_PERIOD nil :f_ESCAPE nil :f_BACK_SPACE nil} jproto))
    (put this :f_keyEventWrapper (ABKeyEventWrapper/jm_getInstance))
    (put this :f_UNKNOWN (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_UNDEFINED) "UNKNOWN"))
    (put this :f_ENTER (PCGameKey/jnew_2 5 "Enter"))
    (put this :f__A (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_A) "A"))
    (put this :f__B (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_B) "B"))
    (put this :f__C (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_C) "C"))
    (put this :f__D (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_D) "D"))
    (put this :f__E (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_E) "E"))
    (put this :f__F (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_F) "F"))
    (put this :f__G (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_G) "G"))
    (put this :f__H (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_H) "H"))
    (put this :f__I (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_I) "I"))
    (put this :f__J (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_J) "J"))
    (put this :f__K (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_K) "K"))
    (put this :f__L (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_L) "L"))
    (put this :f__M (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_M) "M"))
    (put this :f__N (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_N) "N"))
    (put this :f__O (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_O) "O"))
    (put this :f__P (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_P) "P"))
    (put this :f__Q (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_Q) "Q"))
    (put this :f__R (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_R) "R"))
    (put this :f__S (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_S) "S"))
    (put this :f__T (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_T) "T"))
    (put this :f__U (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_U) "U"))
    (put this :f__V (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_V) "V"))
    (put this :f__W (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_W) "W"))
    (put this :f__X (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_X) "X"))
    (put this :f__Y (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_Y) "Y"))
    (put this :f__Z (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_Z) "Z"))
    (put this :f_a (PCGameKey/jnew_2 97 "a"))
    (put this :f_b (PCGameKey/jnew_2 98 "b"))
    (put this :f_c (PCGameKey/jnew_2 99 "c"))
    (put this :f_d (PCGameKey/jnew_2 100 "d"))
    (put this :f_e (PCGameKey/jnew_2 101 "e"))
    (put this :f_f (PCGameKey/jnew_2 102 "f"))
    (put this :f_g (PCGameKey/jnew_2 103 "g"))
    (put this :f_h (PCGameKey/jnew_2 104 "h"))
    (put this :f_i (PCGameKey/jnew_2 105 "i"))
    (put this :f_j (PCGameKey/jnew_2 106 "j"))
    (put this :f_k (PCGameKey/jnew_2 107 "k"))
    (put this :f_l (PCGameKey/jnew_2 108 "l"))
    (put this :f_m (PCGameKey/jnew_2 109 "m"))
    (put this :f_n (PCGameKey/jnew_2 110 "n"))
    (put this :f_o (PCGameKey/jnew_2 111 "o"))
    (put this :f_p (PCGameKey/jnew_2 112 "p"))
    (put this :f_q (PCGameKey/jnew_2 113 "q"))
    (put this :f_r (PCGameKey/jnew_2 114 "r"))
    (put this :f_s (PCGameKey/jnew_2 115 "s"))
    (put this :f_t (PCGameKey/jnew_2 116 "t"))
    (put this :f_u (PCGameKey/jnew_2 117 "u"))
    (put this :f_v (PCGameKey/jnew_2 118 "v"))
    (put this :f_w (PCGameKey/jnew_2 119 "w"))
    (put this :f_x (PCGameKey/jnew_2 120 ((PositionStrings/jm_getInstance) :f_X)))
    (put this :f_y (PCGameKey/jnew_2 121 ((PositionStrings/jm_getInstance) :f_Y)))
    (put this :f_z (PCGameKey/jnew_2 122 "z"))
    (put this :f_ZERO (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_0) ((CommonPhoneStrings/jm_getInstance) :f_ZERO)))
    (put this :f_ONE (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_1) ((CommonPhoneStrings/jm_getInstance) :f_ONE)))
    (put this :f_TWO (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_2) ((CommonPhoneStrings/jm_getInstance) :f_TWO)))
    (put this :f_THREE (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_3) ((CommonPhoneStrings/jm_getInstance) :f_THREE)))
    (put this :f_FOUR (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_4) ((CommonPhoneStrings/jm_getInstance) :f_FOUR)))
    (put this :f_FIVE (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_5) ((CommonPhoneStrings/jm_getInstance) :f_FIVE)))
    (put this :f_SIX (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_6) ((CommonPhoneStrings/jm_getInstance) :f_SIX)))
    (put this :f_SEVEN (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_7) ((CommonPhoneStrings/jm_getInstance) :f_SEVEN)))
    (put this :f_EIGHT (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_8) ((CommonPhoneStrings/jm_getInstance) :f_EIGHT)))
    (put this :f_NINE (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_9) ((CommonPhoneStrings/jm_getInstance) :f_NINE)))
    (put this :f_DPAD_UP (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_UP) ((CommonPhoneStrings/jm_getInstance) :f_UP)))
    (put this :f_DPAD_DOWN (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_DOWN) ((CommonPhoneStrings/jm_getInstance) :f_DOWN)))
    (put this :f_DPAD_LEFT (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_LEFT) ((CommonPhoneStrings/jm_getInstance) :f_LEFT)))
    (put this :f_DPAD_RIGHT (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_RIGHT) ((CommonPhoneStrings/jm_getInstance) :f_RIGHT)))
    (put this :f_DPAD_UP2 (this :f_DPAD_UP))
    (put this :f_DPAD_DOWN2 (this :f_DPAD_DOWN))
    (put this :f_DPAD_LEFT2 (this :f_DPAD_LEFT))
    (put this :f_DPAD_RIGHT2 (this :f_DPAD_RIGHT))
    (put this :f_COMMA (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_COMMA) "COMMA"))
    (put this :f_SPACE (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_SPACE) "SPACE"))
    (put this :f_DEL (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_DELETE) "DEL"))
    (put this :f_STAR (PCGameKey/jnew_2 42 ((CommonPhoneStrings/jm_getInstance) :f_STAR)))
    (put this :f_QUESTION (PCGameKey/jnew_2 47 "?"))
    (put this :f_PERIOD (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_PERIOD) ((CommonSeps/jm_getInstance) :f_PERIOD)))
    (put this :f_ESCAPE (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_ESCAPE) "Esc"))
    (put this :f_BACK_SPACE (PCGameKey/jnew_2 ((this :f_keyEventWrapper) :f_VK_BACK_SPACE) "Backspace"))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jm_isSubmission (fn jm_isSubmission [this _input]
    (label jreturn
        (if (= _input (this :f_ENTER))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isDelete (fn jm_isDelete [this _input]
    (label jreturn
        (if (= _input (this :f_DEL))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isBackSpace (fn jm_isBackSpace [this _input]
    (label jreturn
        (if (= _input (this :f_BACK_SPACE))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isUp (fn jm_isUp [this _input]
    (label jreturn
        (if (or (= _input (this :f_DPAD_UP)) (= _input (this :f_DPAD_UP2)))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isDown (fn jm_isDown [this _input]
    (label jreturn
        (if (or (= _input (this :f_DPAD_DOWN)) (= _input (this :f_DPAD_DOWN2)))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isLeft (fn jm_isLeft [this _input]
    (label jreturn
        (if (or (= _input (this :f_DPAD_LEFT)) (= _input (this :f_DPAD_LEFT2)))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isRight (fn jm_isRight [this _input]
    (label jreturn
        (if (or (= _input (this :f_DPAD_RIGHT)) (= _input (this :f_DPAD_RIGHT2)))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isEnter (fn jm_isEnter [this _input]
    (label jreturn
        (if (= _input (this :f_ENTER))
            (do
            (return jreturn true)))
        (return jreturn false))))

(set jproto @{:jm_isSubmission jm_isSubmission :jm_isDelete jm_isDelete :jm_isBackSpace jm_isBackSpace :jm_isUp jm_isUp :jm_isDown jm_isDown :jm_isLeft jm_isLeft :jm_isRight jm_isRight :jm_isEnter jm_isEnter})


