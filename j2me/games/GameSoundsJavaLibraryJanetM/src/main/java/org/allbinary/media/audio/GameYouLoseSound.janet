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
# package org.allbinary.media.audio

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./CompositeSound :as CompositeSound)

#Use 8hz16bitmono for most J2ME
# Java class GameYouLoseSound
(var jproto nil)
(var jcell_soundInterface :jnone)
(var jstatic_soundInterface nil)
(var jsetstatic_soundInterface nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_soundInterface (fn jstatic_soundInterface []
  (when (= jcell_soundInterface :jnone) (set jcell_soundInterface (jnew_0)))
  jcell_soundInterface))
(set jsetstatic_soundInterface (fn jsetstatic_soundInterface [value] (set jcell_soundInterface value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameYouLoseSound"} jproto))
        (JR/superInit this (CompositeSound/jnew_1 "resource:/wav/youlose.wav"))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_soundInterface)))))

(set jproto (table/setproto @{} CompositeSound/jproto))


