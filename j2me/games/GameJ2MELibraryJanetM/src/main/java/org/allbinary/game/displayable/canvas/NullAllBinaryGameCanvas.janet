# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

# Java class NullAllBinaryGameCanvas
(var jproto nil)
(var jcell_NULL_ALLBINARY_GAME_CANVAS :jnone)
(var jstatic_NULL_ALLBINARY_GAME_CANVAS nil)
(var jsetstatic_NULL_ALLBINARY_GAME_CANVAS nil)
(var jnew_0 nil)
(var jm_getLayerManager nil)
(var jm_addCommand nil)
(var jm_getHeight nil)
(var jm_getWidth nil)
(var jm_removeCommand nil)
(var jm_setCommandListener nil)

(set jstatic_NULL_ALLBINARY_GAME_CANVAS (fn jstatic_NULL_ALLBINARY_GAME_CANVAS []
  (when (= jcell_NULL_ALLBINARY_GAME_CANVAS :jnone) (set jcell_NULL_ALLBINARY_GAME_CANVAS (jnew_0)))
  jcell_NULL_ALLBINARY_GAME_CANVAS))
(set jsetstatic_NULL_ALLBINARY_GAME_CANVAS (fn jsetstatic_NULL_ALLBINARY_GAME_CANVAS [value] (set jcell_NULL_ALLBINARY_GAME_CANVAS value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullAllBinaryGameCanvas"} jproto))
    this))

    
(set jm_getLayerManager (fn jm_getLayerManager [this]
        (error (JR/newException "RuntimeException"))))
    
(set jm_addCommand (fn jm_addCommand [this _cmd]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getHeight (fn jm_getHeight [this]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getWidth (fn jm_getWidth [this]
        (error (JR/newException "RuntimeException"))))
    
(set jm_removeCommand (fn jm_removeCommand [this _cmd]
        (error (JR/newException "RuntimeException"))))
    
(set jm_setCommandListener (fn jm_setCommandListener [this _l]
        (error (JR/newException "RuntimeException"))))

(set jproto @{:jm_getLayerManager jm_getLayerManager :jm_addCommand jm_addCommand :jm_getHeight jm_getHeight :jm_getWidth jm_getWidth :jm_removeCommand jm_removeCommand :jm_setCommandListener jm_setCommandListener})


