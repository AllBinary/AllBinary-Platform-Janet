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
# package org.allbinary.game.canvas

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullCanvas/jstatic_NULL_CANVAS [& args] (JR/call jfile "../../../../javax/microedition/lcdui/NullCanvas" "jstatic_NULL_CANVAS" args))
(defn- AllBinaryGameLayerManager/jm_getNullInstance [& args] (JR/call jfile "../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" "jm_getNullInstance" args))

# Java class ABToGBUtil
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
    (var this (table/setproto @{:jclass "ABToGBUtil" :f_abCanvas nil :f_allBinaryGameLayerManager nil} jproto))
    (put this :f_abCanvas (NullCanvas/jstatic_NULL_CANVAS))
    (put this :f_allBinaryGameLayerManager (AllBinaryGameLayerManager/jm_getNullInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


