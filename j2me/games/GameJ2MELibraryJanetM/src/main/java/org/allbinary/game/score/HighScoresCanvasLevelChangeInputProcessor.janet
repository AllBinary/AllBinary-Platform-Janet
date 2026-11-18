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
(defn- Canvas/jstatic_RIGHT [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_RIGHT" args))
(defn- Canvas/jstatic_LEFT [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Canvas" "jstatic_LEFT" args))
(defn- GameKeyEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/input/event/GameKeyEventHandler" "jm_getInstance" args))
(defn- GameKeyEventUtil/jm_getKey [& args] (JR/call jfile "../../../../org/allbinary/game/input/event/GameKeyEventUtil" "jm_getKey" args))
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(import ./HighScoresCanvasInputProcessor :as HighScoresCanvasInputProcessor)

# Java class HighScoresCanvasLevelChangeInputProcessor
(var jproto nil)
(var jnew_1 nil)
(var jm_updateMeasurement nil)
(var jm_open nil)
(var jm_close nil)
(var jm_update nil)
(var jm_paint nil)

    
(set jnew_1 (fn jnew_1 [_highScoresCanvas]
    (var this (table/setproto @{:jclass "HighScoresCanvasLevelChangeInputProcessor" :f_displayInfoSingleton nil :f_INSTRUCTIONS nil :f_myFontProcessor nil :f_anchor 0 :f_fontHeight 0} jproto))
    (put this :f_displayInfoSingleton (DisplayInfoSingleton/jm_getInstance))
    (put this :f_INSTRUCTIONS "(Right = Next Track, Left = Previous Track)")
    (put this :f_myFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
    (put this :f_fontHeight 0)
        (JR/superInit this (HighScoresCanvasInputProcessor/jnew_1 _highScoresCanvas))
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_fontHeight) (:jm_getHeight _font))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_open (fn jm_open [this]
        (:jm_addListener (GameKeyEventHandler/jm_getInstance) this)))
    
(set jm_close (fn jm_close [this]
        (:jm_removeListener (GameKeyEventHandler/jm_getInstance) this)))
    
(set jm_update (fn jm_update [this]
        (var _list (:jm_getGameKeyEventList this))
        (var _size (:jm_size _list))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _anyType ((_list :f_objectArray) _index))
            (var _key (GameKeyEventUtil/jm_getKey _anyType))
            (if (= _key (Canvas/jstatic_RIGHT))
                (do
                (JR/className (JR/className (:jm_getHighScoresCanvas this))))
                (if (= _key (Canvas/jstatic_LEFT))
                (do
                (JR/className (JR/className (:jm_getHighScoresCanvas this))))))
            (JR/className (:jm_getHighScoresCanvas this)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_clear _list)))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (var _width (:jm_getLastWidth (this :f_displayInfoSingleton)))
        (var _topScoresWidth (brshift (JR/className (:jm_getFont _graphics)) 1))
        (:jm_drawString _graphics (this :f_INSTRUCTIONS) (JR/i32 (- (brshift _width 1) _topScoresWidth)) (JR/i32 (* (this :f_fontHeight) 2)) (this :f_anchor))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_open jm_open :jm_close jm_close :jm_update jm_update :jm_paint jm_paint} HighScoresCanvasInputProcessor/jproto))


