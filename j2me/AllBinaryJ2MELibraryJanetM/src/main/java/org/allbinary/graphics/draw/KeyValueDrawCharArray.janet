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
# package org.allbinary.graphics.draw

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CharArrayFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/java/character/CharArrayFactory" "jm_getInstance" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))

# Java class KeyValueDrawCharArray
(var jproto nil)
(var jnew_2 nil)
(var jm_updateMeasurement nil)
(var jm_paint nil)
(var jm_update nil)

    
(set jnew_2 (fn jnew_2 [_label _x]
    (var this (table/setproto @{:jclass "KeyValueDrawCharArray" :f_myFontProcessor nil :f_LABEL nil :f_labelX 0 :f_valueX 0 :f_value nil :f_len 0} jproto))
    (put this :f_myFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    
    
    
    (put this :f_value (:jm_getZeroCharArray (CharArrayFactory/jm_getInstance)))
    
        (set (this :f_LABEL) _label)
        (set (this :f_labelX) _x)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _labelWidth (JR/i32 (- (JR/className (:jm_getFont _graphics)) (length (this :f_LABEL)))))
        (set (this :f_valueX) (JR/i32 (+ _labelWidth (this :f_labelX))))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_paint (fn jm_paint [this _graphics _y]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (:jm_drawString _graphics (this :f_LABEL) (this :f_labelX) _y 0)
        (:jm_drawChars _graphics (this :f_value) 0 (this :f_len) (this :f_valueX) _y 0)))
    
(set jm_update (fn jm_update [this _value _len]
        (set (this :f_value) _value)
        (set (this :f_len) _len)))

(set jproto @{:jm_updateMeasurement jm_updateMeasurement :jm_paint jm_paint :jm_update jm_update})


