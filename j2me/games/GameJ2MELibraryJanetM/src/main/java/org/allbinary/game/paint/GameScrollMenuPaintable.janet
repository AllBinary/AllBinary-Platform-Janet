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
# package org.allbinary.game.paint

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ColorChangeEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/ColorChangeEventHandler" "jm_getInstance" args))
(import ./BasicGameDemoPaintable :as BasicGameDemoPaintable)

# Java class GameScrollMenuPaintable
(var jproto nil)
(var jnew_4 nil)
(var jm_setState nil)
(var jm_onEvent nil)
(var jm_setColor nil)

    
(set jnew_4 (fn jnew_4 [_mainDemoStatePaintable _ownershipPaintable _helpPaintableInterface _basicColor]
    (var this (table/setproto @{:jclass "GameScrollMenuPaintable"} jproto))
        (JR/superInit this (BasicGameDemoPaintable/jnew_3 _mainDemoStatePaintable _ownershipPaintable _helpPaintableInterface))
        (:jm_setColor this _basicColor)
        (:jm_addListenerInterface (ColorChangeEventHandler/jm_getInstance) this)
    this))
    
(set jm_setState (fn jm_setState [this _state]
        (:jm_setCurrentStatePaintable this (:jm_getMainDemoStatePaintable this))))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
    nil))
    
(set jm_setColor (fn jm_setColor [this _basicColor]
        (var _mainGameDemoStatePaintable (:jm_getMainDemoStatePaintable this))
        (var _formPaintable (:jm_getMenuPaintableInterface _mainGameDemoStatePaintable))
        (var _scrollSelectionForm (:jm_getForm _formPaintable))
        (JR/className (:jm_getOwnershipPaintableInterface _mainGameDemoStatePaintable))
        (:jm_setButtonBasicColor _scrollSelectionForm _basicColor)
        (var _item nil)
        (var _stringComponent nil)
        (do
            (var _index (JR/i32 (- (:jm_size _scrollSelectionForm) 1)))
            (while (>= _index 0)
                (do
            (set _item (:jm_get _scrollSelectionForm _index))
            (set _stringComponent (:jm_getLabelStringComponent _item))
            (if (not (nil? _stringComponent))
                (do
                (:jm_setForegroundBasicColor _stringComponent _basicColor))))
                (do (set _index (JR/i32 (- _index 1))))))))

(set jproto (table/setproto @{:jm_setState jm_setState :jm_onEvent jm_onEvent :jm_setColor jm_setColor} BasicGameDemoPaintable/jproto))


