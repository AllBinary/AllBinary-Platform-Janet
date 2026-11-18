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
(defn- NullPaintable/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/paint/NullPaintable" "jm_getInstance" args))
(import ../../../../org/allbinary/graphics/paint/StatePaintable :as StatePaintable)

# Java class BasicGameDemoPaintable
(var jproto nil)
(var jnew_3 nil)
(var jm_setState nil)
(var jm_paint nil)
(var jm_getHelpPaintableInterface nil)
(var jm_setCurrentStatePaintable nil)
(var jm_getCurrentStatePaintable nil)
(var jm_getMainDemoStatePaintable nil)

    
(set jnew_3 (fn jnew_3 [_mainDemoStatePaintable _ownershipPaintable _helpPaintableInterface]
    (var this (table/setproto @{:jclass "BasicGameDemoPaintable" :f_mainDemoStatePaintable nil :f_ownershipPaintable nil :f_helpPaintableInterface nil :f_currentStatePaintable nil} jproto))
    
    
    
    (put this :f_currentStatePaintable (NullPaintable/jm_getInstance))
    (JR/superInit this (StatePaintable/jnew_0))
        (set (this :f_mainDemoStatePaintable) _mainDemoStatePaintable)
        (:jm_setCurrentStatePaintable this (NullPaintable/jm_getInstance))
        (set (this :f_ownershipPaintable) _ownershipPaintable)
        (set (this :f_helpPaintableInterface) _helpPaintableInterface)
    this))
    
(set jm_setState (fn jm_setState [this _state]
        (if (= _state 0)
            (do
            (:jm_setCurrentStatePaintable this (:jm_getMainDemoStatePaintable this)))
            (if (= _state 1)
            (do
            (:jm_setCurrentStatePaintable this (this :f_helpPaintableInterface)))
            (do
            (:jm_setCurrentStatePaintable this (this :f_ownershipPaintable)))))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_paint (:jm_getCurrentStatePaintable this) _graphics)))
    
(set jm_getHelpPaintableInterface (fn jm_getHelpPaintableInterface [this]
    (label jreturn
        (return jreturn (this :f_helpPaintableInterface)))))
    
(set jm_setCurrentStatePaintable (fn jm_setCurrentStatePaintable [this _currentStatePaintable]
        (set (this :f_currentStatePaintable) _currentStatePaintable)))
    
(set jm_getCurrentStatePaintable (fn jm_getCurrentStatePaintable [this]
    (label jreturn
        (return jreturn (this :f_currentStatePaintable)))))
    
(set jm_getMainDemoStatePaintable (fn jm_getMainDemoStatePaintable [this]
    (label jreturn
        (return jreturn (this :f_mainDemoStatePaintable)))))

(set jproto (table/setproto @{:jm_setState jm_setState :jm_paint jm_paint :jm_getHelpPaintableInterface jm_getHelpPaintableInterface :jm_setCurrentStatePaintable jm_setCurrentStatePaintable :jm_getCurrentStatePaintable jm_getCurrentStatePaintable :jm_getMainDemoStatePaintable jm_getMainDemoStatePaintable} StatePaintable/jproto))


