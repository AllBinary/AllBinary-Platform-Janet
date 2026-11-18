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
# package org.allbinary.game.part.weapon

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class SalvoInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_process nil)
(var jm_processScore nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SalvoInterface"} jproto))
    this))

    
(set jm_process (fn jm_process [this _allbinaryLayerManager _angle _otherAngle]
    (error (JR/newException "AbstractMethodError" "process"))))
    
(set jm_processScore (fn jm_processScore [this _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface]
    (error (JR/newException "AbstractMethodError" "processScore"))))

(set jproto @{:jm_process jm_process :jm_processScore jm_processScore})


