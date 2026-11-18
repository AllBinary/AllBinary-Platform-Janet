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
(defn- NoButtonsTouchInputFactory/jm_getInstance [& args] (JR/call jfile "./NoButtonsTouchInputFactory" "jm_getInstance" args))

# Java class TouchButtonsBuilderFactory
(var jproto nil)
(var jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY :jnone)
(var jstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY nil)
(var jsetstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY (fn jstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY []
  (when (= jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY :jnone) (set jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY (jnew_0)))
  jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY))
(set jsetstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY (fn jsetstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY [value] (set jcell_NO_TOUCH_BUTTON_BUILDER_FACTORY value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TouchButtonsBuilderFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this]
    (label jreturn
        (return jreturn (NoButtonsTouchInputFactory/jm_getInstance)))))

(set jproto @{:jm_getInstance jm_getInstance})


