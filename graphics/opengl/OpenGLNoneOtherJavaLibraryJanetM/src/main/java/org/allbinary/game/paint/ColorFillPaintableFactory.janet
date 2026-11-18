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
(defn- OperatingSystemFactory/jm_getInstance_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/system/os/OperatingSystemFactory" "jm_getInstance_0" args))
(defn- ColorFillPaintable/jnew_1 [& args] (JR/call jfile "./ColorFillPaintable" "jnew_1" args))
(defn- OverScanColorFillPaintable/jnew_1 [& args] (JR/call jfile "./OverScanColorFillPaintable" "jnew_1" args))

# Java class ColorFillPaintableFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance_0 nil)
(var jm_getInstance_2 nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ColorFillPaintableFactory"} jproto))
    this))

    
(set jm_getInstance_0 (fn jm_getInstance_0 []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getInstance_2 (fn jm_getInstance_2 [this _basicColor _forThreedCanvas]
    (label jreturn
        (var _operatingSystem (:jm_getOperatingSystemInstance (OperatingSystemFactory/jm_getInstance_0)))
        (if (:jm_isOverScan _operatingSystem)
            (do
            (return jreturn (OverScanColorFillPaintable/jnew_1 _basicColor)))
            (do
            (return jreturn (ColorFillPaintable/jnew_1 _basicColor)))))))

(set jproto @{:jm_getInstance_2 jm_getInstance_2})


