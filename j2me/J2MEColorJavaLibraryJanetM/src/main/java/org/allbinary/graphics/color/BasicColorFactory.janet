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
# package org.allbinary.graphics.color

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- BasicColor/jnew_3 [& args] (JR/call jfile "./BasicColor" "jnew_3" args))
(defn- BasicColorUtil/jm_getInstance [& args] (JR/call jfile "./BasicColorUtil" "jm_getInstance" args))

# Java class BasicColorFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_createInstance nil)
(var jm_createInstanceA nil)
(var jm_createInstanceAN nil)
(var jm_createInstanceARGB nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicColorFactory" :f_NULL_COLOR nil :f_TAN nil :f_SKIN_PINK nil :f_RED nil :f_LIGHT_RED nil :f_DARK_GREEN nil :f_GREEN nil :f_LIGHT_GREEN nil :f_PURPLE nil :f_BLUE nil :f_LIGHT_BLUE nil :f_VERY_LIGHT_BLUE nil :f_PUCE nil :f_AQUA nil :f_YELLOW nil :f_PINK nil :f_BLACK nil :f_GREY nil :f_LIGHT_GREY nil :f_DARK_GREY nil :f_ORANGE nil :f_BROWN nil :f_WHITE nil :f_TRANSPARENT_COLOR nil :f_TRANSPARENT_GREY nil :f_TRANSPARENT_BLACK nil :f_TRANSPARENT_RED nil :f_CLEAR_COLOR nil :f_BORDER_COLOR nil} jproto))
    (put this :f_NULL_COLOR (:jm_createInstanceARGB this 255 255 255 255 "null color"))
    (put this :f_TAN (:jm_createInstance this 0xE9D8B5))
    (put this :f_SKIN_PINK (:jm_createInstance this 0xFDCECE))
    (put this :f_RED (:jm_createInstanceAN this ((BasicColorUtil/jm_getInstance) :f_ALPHA) 0xFF0000 "red"))
    (put this :f_LIGHT_RED (:jm_createInstanceAN this ((BasicColorUtil/jm_getInstance) :f_ALPHA) 0xFFA0A0 "light red"))
    (put this :f_DARK_GREEN (:jm_createInstance this 0x00FF00))
    (put this :f_GREEN (:jm_createInstanceAN this ((BasicColorUtil/jm_getInstance) :f_ALPHA) 0x00DD00 "green"))
    (put this :f_LIGHT_GREEN (:jm_createInstance this 0x007700))
    (put this :f_PURPLE (:jm_createInstanceAN this ((BasicColorUtil/jm_getInstance) :f_ALPHA) 0x400040 "purple"))
    (put this :f_BLUE (:jm_createInstanceAN this ((BasicColorUtil/jm_getInstance) :f_ALPHA) 0x0000FF "blue"))
    (put this :f_LIGHT_BLUE (:jm_createInstance this 0x00aaff))
    (put this :f_VERY_LIGHT_BLUE (:jm_createInstance this 0x000033))
    (put this :f_PUCE (:jm_createInstance this 0xFF00AA))
    (put this :f_AQUA (:jm_createInstance this 0x00FFFF))
    (put this :f_YELLOW (:jm_createInstanceAN this ((BasicColorUtil/jm_getInstance) :f_ALPHA) 0xFFFF00 "yellow"))
    (put this :f_PINK (:jm_createInstance this 0xFF00FF))
    (put this :f_BLACK (:jm_createInstanceAN this ((BasicColorUtil/jm_getInstance) :f_ALPHA) 0x000000 "black"))
    (put this :f_GREY (:jm_createInstanceAN this ((BasicColorUtil/jm_getInstance) :f_ALPHA) 0xAAAAAA "grey"))
    (put this :f_LIGHT_GREY (:jm_createInstance this 0xC0C0C0))
    (put this :f_DARK_GREY (:jm_createInstance this 0x404040))
    (put this :f_ORANGE (:jm_createInstance this 0xe07718))
    (put this :f_BROWN (:jm_createInstance this 0x956B00))
    (put this :f_WHITE (:jm_createInstance this 0xFFFFFF))
    (put this :f_TRANSPARENT_COLOR (:jm_createInstanceAN this 0x00000000 0x000000 ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))
    (put this :f_TRANSPARENT_GREY (:jm_createInstanceAN this 0x52000000 0xECECEC ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))
    (put this :f_TRANSPARENT_BLACK (:jm_createInstanceAN this 0x52000000 0x000000 ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))
    (put this :f_TRANSPARENT_RED (:jm_createInstanceAN this 0x52000000 0xFF0000 ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))
    (put this :f_CLEAR_COLOR (this :f_BLACK))
    (put this :f_BORDER_COLOR (this :f_WHITE))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_createInstance (fn jm_createInstance [this _value]
    (label jreturn
        (return jreturn (BasicColor/jnew_3 ((BasicColorUtil/jm_getInstance) :f_ALPHA) _value ((StringUtil/jm_getInstance) :f_EMPTY_STRING))))))
    
(set jm_createInstanceA (fn jm_createInstanceA [this _alphaValue _value]
    (label jreturn
        (return jreturn (BasicColor/jnew_3 _alphaValue _value ((StringUtil/jm_getInstance) :f_EMPTY_STRING))))))
    
(set jm_createInstanceAN (fn jm_createInstanceAN [this _alphaValue _value _name]
    (label jreturn
        (return jreturn (BasicColor/jnew_3 _alphaValue _value _name)))))
    
(set jm_createInstanceARGB (fn jm_createInstanceARGB [this _alphaValue _r _g _b _name]
    (label jreturn
        (var _ALPHA_MASK 0xFF000000)
        (return jreturn (BasicColor/jnew_3 _alphaValue (JR/i32 (+ (JR/i32 (+ (JR/i32 (+ (band (JR/i32 (blshift _alphaValue 24)) _ALPHA_MASK) (band (JR/i32 (blshift _r 16)) 0x00FF0000))) (band (JR/i32 (blshift _g 8)) 0x0000FF00))) (band _b 0x000000FF))) ((StringUtil/jm_getInstance) :f_EMPTY_STRING))))))

(set jproto @{:jm_createInstance jm_createInstance :jm_createInstanceA jm_createInstanceA :jm_createInstanceAN jm_createInstanceAN :jm_createInstanceARGB jm_createInstanceARGB})


