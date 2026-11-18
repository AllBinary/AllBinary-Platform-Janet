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
# package org.allbinary.game.score

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(import ../../../../org/allbinary/graphics/paint/Paintable :as Paintable)
(defn- NullHighScoresSingletonFactory/jm_getInstance [& args] (JR/call jfile "./NullHighScoresSingletonFactory" "jm_getInstance" args))

# Java class HighScoresPaintable
(var jproto nil)
(var jnew_0 nil)
(var jm_updateMeasurement nil)
(var jm_onEvent nil)
(var jm_paint nil)
(var jm_setBasicColorP nil)
(var jm_getBasicColorP nil)
(var jm_setHighScores nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HighScoresPaintable" :f_displayInfoSingleton nil :f_myFontProcessor nil :f_basicColor nil :f_highScores nil :f_anchor 0 :f_charHeight 0} jproto))
    (put this :f_displayInfoSingleton (DisplayInfoSingleton/jm_getInstance))
    (put this :f_myFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_basicColor ((BasicColorFactory/jm_getInstance) :f_WHITE))
    (put this :f_highScores (NullHighScoresSingletonFactory/jm_getInstance))
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
    
    (JR/superInit this (Paintable/jnew_0))
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_charHeight) (:jm_getHeight _font))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (var _colorChangeEvent _eventObject)
        (set (this :f_basicColor) (:jm_getBasicColorP _colorChangeEvent))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (var _width (:jm_getLastWidth (this :f_displayInfoSingleton)))
        (var _height (:jm_getLastHeight (this :f_displayInfoSingleton)))
        (:jm_setColor _graphics (:jm_intValue (:jm_getBasicColorP this)))
        (var _heading (:jm_getHeading (this :f_highScores)))
        (var _topScoresWidth (brshift (JR/className (:jm_getFont _graphics)) 1))
        (var _charHeight (this :f_charHeight))
        (:jm_drawString _graphics _heading (JR/i32 (- (brshift _width 1) _topScoresWidth)) _charHeight (this :f_anchor))
        (:jm_drawString _graphics (:jm_getColumnOneHeading (this :f_highScores)) 10 (JR/i32 (* _charHeight 3)) (this :f_anchor))
        (var _columnTwoHeading (:jm_getColumnTwoHeading (this :f_highScores)))
        (var _columnTwoHeadingWidth (JR/className (:jm_getFont _graphics)))
        (:jm_drawString _graphics _columnTwoHeading (JR/i32 (- (JR/i32 (- _width 10)) _columnTwoHeadingWidth)) (JR/i32 (* _charHeight 3)) (this :f_anchor))
        (var _index 4)
        (var _largestSecondColumnWidth _columnTwoHeadingWidth)
        (var _list (:jm_getList (this :f_highScores)))
        (var _size (:jm_size _list))
        (var _vectorIndex 0)
        (var _highScore nil)
        (do
            (while (and (< _vectorIndex _size) (< (JR/i32 (* _charHeight _index)) (JR/i32 (- _height (JR/i32 (* _charHeight 2))))))
                (do
            (set _highScore ((_list :f_objectArray) _vectorIndex))
            (var _nextScoreWidth (JR/className (:jm_getFont _graphics)))
            (if (> _nextScoreWidth _largestSecondColumnWidth)
                (do
                (set _largestSecondColumnWidth _nextScoreWidth)))
            (set _vectorIndex (JR/i32 (+ _vectorIndex 1))))))
        (set _vectorIndex 0)
        (do
            (while (and (< _vectorIndex _size) (< (JR/i32 (* _charHeight _index)) (JR/i32 (- _height (JR/i32 (* _charHeight 2))))))
                (do
            (set _highScore ((_list :f_objectArray) _vectorIndex))
            (:jm_drawString _graphics (:jm_getName _highScore) 10 (JR/i32 (* _charHeight _index)) (this :f_anchor))
            (:jm_drawString _graphics (:jm_getScoreString _highScore) (JR/i32 (- (JR/i32 (- _width 10)) _largestSecondColumnWidth)) (JR/i32 (* _charHeight _index)) (this :f_anchor))
            (set _index (JR/i32 (+ _index 1)))
            (set _vectorIndex (JR/i32 (+ _vectorIndex 1))))))))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        (set (this :f_basicColor) _basicColor)))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (return jreturn (this :f_basicColor)))))
    
(set jm_setHighScores (fn jm_setHighScores [this _highScores]
        (set (this :f_highScores) _highScores)))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_onEvent jm_onEvent :jm_paint jm_paint :jm_setBasicColorP jm_setBasicColorP :jm_getBasicColorP jm_getBasicColorP :jm_setHighScores jm_setHighScores} Paintable/jproto))


