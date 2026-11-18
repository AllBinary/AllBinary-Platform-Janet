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
# package org.allbinary.graphics.pipeline

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- MyRandomFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/rand/MyRandomFactory" "jm_getInstance" args))
(defn- BasicGraphicsPipeline/jnew_1 [& args] (JR/call jfile "./BasicGraphicsPipeline" "jnew_1" args))

# Java class RandomTranslation
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "RandomTranslation"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [_vector _howMuch]
    (label jreturn
        (var _myRandomFactory (MyRandomFactory/jm_getInstance))
        (var _x (JR/i32 (- (:jm_getNextInt _myRandomFactory _howMuch))))
        (var _y (:jm_getNextInt _myRandomFactory _howMuch))
        (var _graphicsPipe (BasicGraphicsPipeline/jnew_1 _vector))
        (:jm_createMatrix _graphicsPipe)
        (:jm_translate _graphicsPipe _x _y)
        (return jreturn (:jm_getMatrix _graphicsPipe)))))

(set jproto @{})


