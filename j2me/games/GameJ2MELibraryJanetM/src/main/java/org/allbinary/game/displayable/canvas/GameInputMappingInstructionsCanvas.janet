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
(defn- Command/jnew_4 [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Command" "jnew_4" args))
(defn- Command/jstatic_SCREEN [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Command" "jstatic_SCREEN" args))
(defn- ColorFillPaintableFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/paint/ColorFillPaintableFactory" "jm_getInstance" args))
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- DrawStringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/draw/DrawStringUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ./GameCommandCanvas :as GameCommandCanvas)

# Java class GameInputMappingInstructionsCanvas
(var jproto nil)
(var jcell_DISPLAY :jnone)
(var jstatic_DISPLAY nil)
(var jsetstatic_DISPLAY nil)
(var jcell_CLOSE :jnone)
(var jstatic_CLOSE nil)
(var jsetstatic_CLOSE nil)
(var jcell_NAME :jnone)
(var jstatic_NAME nil)
(var jsetstatic_NAME nil)
(var jnew_2 nil)
(var jm_initCommands nil)
(var jm_paint nil)

(set jstatic_DISPLAY (fn jstatic_DISPLAY []
  (when (= jcell_DISPLAY :jnone) (set jcell_DISPLAY (Command/jnew_4 "Help" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1)))
  jcell_DISPLAY))
(set jsetstatic_DISPLAY (fn jsetstatic_DISPLAY [value] (set jcell_DISPLAY value)))

(set jstatic_CLOSE (fn jstatic_CLOSE []
  (when (= jcell_CLOSE :jnone) (set jcell_CLOSE (Command/jnew_4 "Close" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1)))
  jcell_CLOSE))
(set jsetstatic_CLOSE (fn jsetstatic_CLOSE [value] (set jcell_CLOSE value)))

(set jstatic_NAME (fn jstatic_NAME []
  (when (= jcell_NAME :jnone) (set jcell_NAME "GameInputMappingInstructionsCanvas"))
  jcell_NAME))
(set jsetstatic_NAME (fn jsetstatic_NAME [value] (set jcell_NAME value)))

    
(set jnew_2 (fn jnew_2 [_commandListener _allBinaryGameLayerManager]
    (var this (table/setproto @{:jclass "GameInputMappingInstructionsCanvas" :f_drawStringUtil nil :f_TITLE nil :f_instructions nil :f_colorFillPaintable nil :f_anchor 0} jproto))
    (put this :f_drawStringUtil (DrawStringUtil/jm_getInstance))
    (put this :f_TITLE "Input Instructions")
    (put this :f_instructions @["Add Input Mapping:" "1. Select the desired action by generating a currently defined input for a given action." "(Example: Press the '1' key to select the Fire action)" "2. Make the newly desired input for the selected action." "(Example: Press 'f' to add it to the selected action)" "Note: If the input is already mapped to another action then it will not be added. You" "will need to deleted from the other action before adding it to another." "Warning: Not all keys map for a given platform and show as Unknown." ((StringUtil/jm_getInstance) :f_EMPTY_STRING) "Remove Input Mapping:" "1. Select the desired action by generating a currently defined input for a given action." "(Example: Press the key '1' to select the Fire action)" "2. Select a mapped input for the selected action." "(Example: Press the key '1' to select the '1' key input for the selected Fire action)" "3. Press the Delete Key."])
    
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
        (JR/superInit this (GameCommandCanvas/jnew_4 _commandListener (jstatic_NAME) (:jm_getBackgroundBasicColor _allBinaryGameLayerManager) (:jm_getForegroundBasicColor _allBinaryGameLayerManager)))
        (JR/className (this :f_logUtil))
        (set (this :f_colorFillPaintable) (:jm_getInstance (ColorFillPaintableFactory/jm_getInstance) (:jm_getBackgroundBasicColor _allBinaryGameLayerManager) false))
    this))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
        (:jm_removeAllCommands this)
        (:jm_addCommand this (jstatic_CLOSE))
        (:jm_setCommandListener this _cmdListener)))
    
(set jm_paint (fn jm_paint [this _graphics]
        (JR/className (this :f_myFontProcessor))
        (:jm_paint (this :f_colorFillPaintable) _graphics)
        (var _halfWidth (JR/className (this :f_displayInfo)))
        (var _beginWidth (brshift (JR/className (:jm_getFont _graphics)) 1))
        (:jm_setColor _graphics (this :f_foregroundColor))
        (:jm_drawString _graphics (this :f_TITLE) (JR/i32 (- _halfWidth _beginWidth)) (this :f_fontHeight) (this :f_anchor))
        (:jm_drawCenterStrings (this :f_drawStringUtil) _graphics (this :f_instructions) (JR/className (this :f_displayInfo)) (this :f_fontHeight) _halfWidth (JR/i32 (* 3 (this :f_fontHeight))))
        ((get GameCommandCanvas/jproto :jm_paint) this _graphics)))

(set jproto (table/setproto @{:jm_initCommands jm_initCommands :jm_paint jm_paint} GameCommandCanvas/jproto))


