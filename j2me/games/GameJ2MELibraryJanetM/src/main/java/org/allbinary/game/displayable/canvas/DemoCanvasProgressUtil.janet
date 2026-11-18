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
(defn- ProgressCanvasFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" "jm_getInstance" args))
(defn- PaintableComposite/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/paint/PaintableComposite" "jnew_1" args))

# Java class DemoCanvasProgressUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_showProgress nil)
(var jm_showProgressOptionallyInTheBackground nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DemoCanvasProgressUtil"} jproto))
    this))

    
(set jm_showProgress (fn jm_showProgress [_demoCanvas]
        (jm_showProgressOptionallyInTheBackground _demoCanvas false)))
    
(set jm_showProgressOptionallyInTheBackground (fn jm_showProgressOptionallyInTheBackground [_demoCanvas _background]
        (var _progressCanvas (ProgressCanvasFactory/jm_getInstance))
        (:jm_startBackground _progressCanvas _background)
        (var _paintableArray (array/new-filled 2 nil))
        (set (_paintableArray 0) _progressCanvas)
        (set (_paintableArray 1) (:jm_getDefaultPaintableInterface _demoCanvas))
        (:jm_setDefaultPaintableInterface _demoCanvas (PaintableComposite/jnew_1 _paintableArray))
        (:jm_setPaintableInterface _demoCanvas (:jm_getDefaultPaintableInterface _demoCanvas))))

(set jproto @{})


