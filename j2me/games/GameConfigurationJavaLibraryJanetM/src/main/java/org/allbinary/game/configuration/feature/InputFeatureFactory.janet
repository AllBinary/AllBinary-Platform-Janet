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
# package org.allbinary.game.configuration.feature

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- InputFeature/jnew_1 [& args] (JR/call jfile "./InputFeature" "jnew_1" args))
(defn- Features/jm_getInstance [& args] (JR/call jfile "./Features" "jm_getInstance" args))

# Java class InputFeatureFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_isSingleKeyProcessing nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "InputFeatureFactory" :f_REMOVE_DUPLICATE_KEY_PRESSES nil :f_INPUT_MAPPING nil :f_MULTI_KEY_PRESS nil :f_SINGLE_KEY_REPEAT_PRESS nil :f_SINGLE_KEY_PRESS nil} jproto))
    (put this :f_REMOVE_DUPLICATE_KEY_PRESSES (InputFeature/jnew_1 "Remove Duplicate Key Presses"))
    (put this :f_INPUT_MAPPING (InputFeature/jnew_1 "Input Mapping"))
    (put this :f_MULTI_KEY_PRESS (InputFeature/jnew_1 "Multi Key Press"))
    (put this :f_SINGLE_KEY_REPEAT_PRESS (InputFeature/jnew_1 "Single Key Repeat Press"))
    (put this :f_SINGLE_KEY_PRESS (InputFeature/jnew_1 "Single Key Press"))
    this))
    
(set jm_isSingleKeyProcessing (fn jm_isSingleKeyProcessing [this]
    (label jreturn
        (var _features (Features/jm_getInstance))
        (if (or (:jm_isFeature _features (this :f_SINGLE_KEY_REPEAT_PRESS)) (:jm_isFeature _features (this :f_SINGLE_KEY_PRESS)))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))

(set jproto @{:jm_isSingleKeyProcessing jm_isSingleKeyProcessing})


