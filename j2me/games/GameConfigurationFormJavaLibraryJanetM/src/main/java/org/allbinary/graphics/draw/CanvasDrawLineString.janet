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
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(defn- DrawStringUtil/jm_getInstance [& args] (JR/call jfile "./DrawStringUtil" "jm_getInstance" args))

# Java class CanvasDrawLineString
(var jproto nil)
(var jcell_NULL_CANVAS_DRAW_LINE_STRING :jnone)
(var jstatic_NULL_CANVAS_DRAW_LINE_STRING nil)
(var jsetstatic_NULL_CANVAS_DRAW_LINE_STRING nil)
(var jnew_2 nil)
(var jm_updateMeasurement nil)
(var jm_paint nil)

(set jstatic_NULL_CANVAS_DRAW_LINE_STRING (fn jstatic_NULL_CANVAS_DRAW_LINE_STRING []
  (when (= jcell_NULL_CANVAS_DRAW_LINE_STRING :jnone) (set jcell_NULL_CANVAS_DRAW_LINE_STRING (jnew_2 0 0)))
  jcell_NULL_CANVAS_DRAW_LINE_STRING))
(set jsetstatic_NULL_CANVAS_DRAW_LINE_STRING (fn jsetstatic_NULL_CANVAS_DRAW_LINE_STRING [value] (set jcell_NULL_CANVAS_DRAW_LINE_STRING value)))

    
(set jnew_2 (fn jnew_2 [_x _y]
    (var this (table/setproto @{:jclass "CanvasDrawLineString" :f_drawStringUtil nil :f_myFontProcessor nil :f_x 0 :f_y 0 :f_fontHeight 0} jproto))
    (put this :f_drawStringUtil (DrawStringUtil/jm_getInstance))
    (put this :f_myFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    
    
    (put this :f_fontHeight 0)
        (set (this :f_x) _x)
        (set (this :f_y) _y)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_fontHeight) (:jm_getHeight _font))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_paint (fn jm_paint [this _graphics _string _line]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (:jm_drawCenterString (this :f_drawStringUtil) _graphics _string 0 (length _string) (this :f_x) (JR/i32 (+ (this :f_y) (JR/i32 (* _line (this :f_fontHeight))))))))

(set jproto @{:jm_updateMeasurement jm_updateMeasurement :jm_paint jm_paint})


