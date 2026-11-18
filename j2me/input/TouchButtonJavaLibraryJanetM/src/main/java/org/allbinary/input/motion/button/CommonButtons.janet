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
# package org.allbinary.input.motion.button

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- Rectangle/jnew_3 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/Rectangle" "jnew_3" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))

# Java class CommonButtons
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

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CommonButtons" :f_STANDARD_BUTTON_SIZE 0 :f_NORMAL_BUTTON nil :f_LARGE_BUTTON nil} jproto))
    
    
    
        (var _displayInfo (DisplayInfoSingleton/jm_getInstance))
        (var _commonButtonSize 128)
        (do
            (var jbreak false)
            (while (and (not jbreak) (> _commonButtonSize 64))
                (label jcontinue
            (var _totalColumns (JR/idiv (:jm_getLastWidth _displayInfo) _commonButtonSize))
            (var _totalRows (JR/idiv (:jm_getLastHeight _displayInfo) _commonButtonSize))
            (var _max _totalColumns)
            (if (> _totalRows _max)
                (do
                (set _max _totalRows)))
            (if (> _max 9)
                (do
                (do (set jbreak true) (return jcontinue))))
            (set _commonButtonSize (brshift _commonButtonSize 1)))))
        (set (this :f_STANDARD_BUTTON_SIZE) _commonButtonSize)
        (set (this :f_NORMAL_BUTTON) (Rectangle/jnew_3 ((PointFactory/jm_getInstance) :f_ZERO_ZERO) (this :f_STANDARD_BUTTON_SIZE) (this :f_STANDARD_BUTTON_SIZE)))
        (set (this :f_LARGE_BUTTON) (Rectangle/jnew_3 ((PointFactory/jm_getInstance) :f_ZERO_ZERO) (JR/i32 (blshift (this :f_STANDARD_BUTTON_SIZE) 1)) (JR/i32 (blshift (this :f_STANDARD_BUTTON_SIZE) 1))))
    this))

(set jproto @{})


