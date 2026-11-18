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
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class CurrentlyPressedTouchButtonSingleton
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_size nil)
(var jm_removeAt nil)
(var jm_remove nil)
(var jm_get nil)
(var jm_contains nil)
(var jm_add nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CurrentlyPressedTouchButtonSingleton" :f_list nil} jproto))
    (put this :f_list (BasicArrayListD/jnew_0))
    this))
    
(set jm_size (fn jm_size [this]
    (label jreturn
        (return jreturn (:jm_size (this :f_list))))))
    
(set jm_removeAt (fn jm_removeAt [this _index]
    (label jreturn
        (return jreturn (:jm_removeAt (this :f_list) _index)))))
    
(set jm_remove (fn jm_remove [this _touchButtonInput]
    (label jreturn
        (return jreturn (:jm_remove (this :f_list) _touchButtonInput)))))
    
(set jm_get (fn jm_get [this _index]
    (label jreturn
        (return jreturn (((this :f_list) :f_objectArray) _index)))))
    
(set jm_contains (fn jm_contains [this _touchButtonInput]
    (label jreturn
        (return jreturn (:jm_contains (this :f_list) _touchButtonInput)))))
    
(set jm_add (fn jm_add [this _touchButtonInput]
        (:jm_add (this :f_list) _touchButtonInput)))

(set jproto @{:jm_size jm_size :jm_removeAt jm_removeAt :jm_remove jm_remove :jm_get jm_get :jm_contains jm_contains :jm_add jm_add})


