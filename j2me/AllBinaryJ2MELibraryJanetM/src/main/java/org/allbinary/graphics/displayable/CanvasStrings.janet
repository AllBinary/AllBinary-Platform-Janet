# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.graphics.displayable

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))

# Java class CanvasStrings
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CanvasStrings" :f_CONSTRUCTOR nil :f_PAUSE nil :f_UN_PAUSE nil :f_SET_FULL_SCREEN_MODE nil :f_SIZE_CHANGED nil :f_SCALED_IMAGES nil :f_PAINT nil :f_ON_DISPLAY_CHANGE_EVENT nil :f_UPDATE_MEASUREMENT nil :f_FD_WIDTH nil :f_FD_HEIGHT nil :f_EMPTY_CHILD_NAME_LIST nil :f_ABOUT nil :f_OPTIONS nil :f_FONT_ATLAS nil :f_OBJ_MODEL nil :f_MD2_MODEL nil :f__PNG nil} jproto))
    (put this :f_CONSTRUCTOR "MyCanvas::MyCanvas")
    (put this :f_PAUSE "MyCanvas::pause")
    (put this :f_UN_PAUSE "MyCanvas::unPause")
    (put this :f_SET_FULL_SCREEN_MODE "setFullScreenMode")
    (put this :f_SIZE_CHANGED "sizeChanged")
    (put this :f_SCALED_IMAGES "scaledImages")
    (put this :f_PAINT "paint")
    (put this :f_ON_DISPLAY_CHANGE_EVENT "onDisplayChangeEvent")
    (put this :f_UPDATE_MEASUREMENT "updateMeasurement")
    (put this :f_FD_WIDTH " font/display width: ")
    (put this :f_FD_HEIGHT " font/display height: ")
    (put this :f_EMPTY_CHILD_NAME_LIST (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))
    (put this :f_ABOUT "About")
    (put this :f_OPTIONS "Options")
    (put this :f_FONT_ATLAS "/font.png")
    (put this :f_OBJ_MODEL "_obj")
    (put this :f_MD2_MODEL "_md2")
    (put this :f__PNG ".png")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


