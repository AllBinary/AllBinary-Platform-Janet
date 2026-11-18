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
(defn- NullCanvas/jstatic_NULL_CANVAS [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/NullCanvas" "jstatic_NULL_CANVAS" args))
(defn- NullImage/jstatic_NULL_IMAGE [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/NullImage" "jstatic_NULL_IMAGE" args))
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(import ../../../../../org/allbinary/graphics/paint/ProcessPaintable :as ProcessPaintable)
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))
(defn- CircularIndexUtil/jm_createInstanceAt [& args] (JR/call jfile "../../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstanceAt" args))

# Java class BufferedGameCanvasPaintHelper
(var jproto nil)
(var jcell_MAX_IMAGES :jnone)
(var jstatic_MAX_IMAGES nil)
(var jsetstatic_MAX_IMAGES nil)
(var jnew_1 nil)
(var jm_process nil)
(var jm_paint nil)

(set jstatic_MAX_IMAGES (fn jstatic_MAX_IMAGES []
  (when (= jcell_MAX_IMAGES :jnone) (set jcell_MAX_IMAGES 4))
  jcell_MAX_IMAGES))
(set jsetstatic_MAX_IMAGES (fn jsetstatic_MAX_IMAGES [value] (set jcell_MAX_IMAGES value)))

    
(set jnew_1 (fn jnew_1 [_gameCanvas]
    (var this (table/setproto @{:jclass "BufferedGameCanvasPaintHelper" :f_gameCanvas nil :f_offScreenImage nil :f_previousImage nil :f_circularIndexUtil nil :f_drawCircularIndexUtil nil :f_anchor 0} jproto))
    (put this :f_gameCanvas (NullCanvas/jstatic_NULL_CANVAS))
    (put this :f_offScreenImage (array/new-filled (jstatic_MAX_IMAGES) nil))
    (put this :f_previousImage (NullImage/jstatic_NULL_IMAGE))
    (put this :f_circularIndexUtil (CircularIndexUtil/jm_createInstance (jstatic_MAX_IMAGES)))
    (put this :f_drawCircularIndexUtil (CircularIndexUtil/jm_createInstanceAt (JR/i32 (- (jstatic_MAX_IMAGES) 1)) (jstatic_MAX_IMAGES)))
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
    (JR/superInit this (ProcessPaintable/jnew_0))
        (error (JR/newException "Exception" "No Longer Used"))
    this))
    
(set jm_process (fn jm_process [this]
        (var _myCanvas (this :f_gameCanvas))
        (:jm_draw _myCanvas (JR/className ((this :f_offScreenImage) (:jm_getIndex (this :f_circularIndexUtil)))))
        (:jm_next (this :f_circularIndexUtil))
        (:jm_next (this :f_drawCircularIndexUtil))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (set (this :f_previousImage) ((this :f_offScreenImage) (:jm_getIndex (this :f_drawCircularIndexUtil))))
        (:jm_drawImage _graphics (this :f_previousImage) 0 0 (this :f_anchor))))

(set jproto (table/setproto @{:jm_process jm_process :jm_paint jm_paint} ProcessPaintable/jproto))


