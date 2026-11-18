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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameStatisticsFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/canvas/GameStatisticsFactory" "jm_getInstance" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- MyFontProcessor/jm_defaultStringWidth [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_defaultStringWidth" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(import ../../../../../org/allbinary/graphics/paint/InitUpdatePaintable :as InitUpdatePaintable)

# Java class GamePerformanceInitUpdatePaintable
(var jproto nil)
(var jnew_0 nil)
(var jm_updateMeasurement nil)
(var jm_init nil)
(var jm_update nil)
(var jm_paint nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GamePerformanceInitUpdatePaintable" :f_halfHeight 0 :f_yArray nil :f_myFontProcessor nil :f_baseRefreshHelperCharArray nil :f_defaultStringWidth 0 :f_RED 0} jproto))
    (put this :f_halfHeight (:jm_getLastHalfHeight (DisplayInfoSingleton/jm_getInstance)))
    (put this :f_yArray @[(JR/i32 (+ (this :f_halfHeight) 30)) (JR/i32 (+ (this :f_halfHeight) 30)) (JR/i32 (+ (JR/i32 (+ (this :f_halfHeight) 30)) 15)) (JR/i32 (+ (JR/i32 (+ (this :f_halfHeight) 30)) 15)) (JR/i32 (+ (JR/i32 (+ (this :f_halfHeight) 30)) 30)) (JR/i32 (+ (JR/i32 (+ (this :f_halfHeight) 30)) 30)) (JR/i32 (+ (JR/i32 (+ (this :f_halfHeight) 30)) 45)) (JR/i32 (+ (JR/i32 (+ (this :f_halfHeight) 30)) 45))])
    (put this :f_myFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_baseRefreshHelperCharArray (seq [jindex1 :range [0 0]] (array/new-filled 0 0)))
    
    (put this :f_RED (JR/className ((BasicColorFactory/jm_getInstance) :f_RED)))
    (JR/superInit this (InitUpdatePaintable/jnew_0))
    this))

    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_defaultStringWidth) (MyFontProcessor/jm_defaultStringWidth _font 2))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_init (fn jm_init [this]
    nil))
    
(set jm_update (fn jm_update [this]
        (set (this :f_baseRefreshHelperCharArray) (:jm_to2DCharArray (GameStatisticsFactory/jm_getInstance)))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (:jm_setColor _graphics (this :f_RED))
        (var _charArray nil)
        (var _charArray2 nil)
        (var _size2 0)
        (var _size3 0)
        (var _size (JR/i32 (- (length (this :f_baseRefreshHelperCharArray)) 2)))
        (do
            (var _index _size)
            (while (>= _index 0)
                (do
            (set _charArray ((this :f_baseRefreshHelperCharArray) _index))
            (set _charArray2 ((this :f_baseRefreshHelperCharArray) (JR/i32 (+ _index 1))))
            (set _size2 (length _charArray))
            (set _size3 (length _charArray2))
            (:jm_drawChars _graphics _charArray 0 _size2 0 ((this :f_yArray) _index) 0)
            (:jm_drawChars _graphics _charArray2 0 _size3 (JR/i32 (* _size2 (this :f_defaultStringWidth))) ((this :f_yArray) (JR/i32 (+ _index 1))) 0))
                (do (set _index (JR/i32 (- _index 2))))))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_init jm_init :jm_update jm_update :jm_paint jm_paint} InitUpdatePaintable/jproto))


