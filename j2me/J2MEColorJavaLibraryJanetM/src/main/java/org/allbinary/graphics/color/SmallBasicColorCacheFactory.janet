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
# package org.allbinary.graphics.color

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "./BasicColorFactory" "jm_getInstance" args))

# Java class SmallBasicColorCacheFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_add nil)
(var jm_getAndOrCreate nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SmallBasicColorCacheFactory" :f_SIZE 0 :f_INDEX_TO_COLOR nil :f_BASIC_COLOR_ARRAY nil :f_colorIndex 0} jproto))
    (put this :f_SIZE 255)
    (put this :f_INDEX_TO_COLOR (array/new-filled (this :f_SIZE) 0))
    (put this :f_BASIC_COLOR_ARRAY (array/new-filled (this :f_SIZE) nil))
    (put this :f_colorIndex 0)
    this))
    
(set jm_add (fn jm_add [this _basicDefaultColor]
        (set ((this :f_BASIC_COLOR_ARRAY) (this :f_colorIndex)) _basicDefaultColor)
        (set ((this :f_INDEX_TO_COLOR) (this :f_colorIndex)) (:jm_intValue _basicDefaultColor))
        (set (this :f_colorIndex) (JR/i32 (+ (this :f_colorIndex) 1)))))
    
(set jm_getAndOrCreate (fn jm_getAndOrCreate [this _colorAsInt]
    (label jreturn
        (var _basicColor nil)
        (do
            (var _index 0)
            (while (< _index (this :f_SIZE))
                (do
            (if (= ((this :f_INDEX_TO_COLOR) _index) _colorAsInt)
                (do
                (return jreturn ((this :f_BASIC_COLOR_ARRAY) _index)))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (var _ALPHA_MASK 0xFF000000)
        (set _basicColor (:jm_createInstanceAN (BasicColorFactory/jm_getInstance) (band _colorAsInt _ALPHA_MASK) (band _colorAsInt 0x00FFFFFF) ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))
        (:jm_add this _basicColor)
        (return jreturn _basicColor))))

(set jproto @{:jm_add jm_add :jm_getAndOrCreate jm_getAndOrCreate})


