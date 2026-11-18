# Generated Code Do Not Modify
# package org.allbinary.game.input.analog

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- AnalogLocationInput/jnew_1 [& args] (JR/call jfile "./AnalogLocationInput" "jnew_1" args))
(defn- AnalogLocationInput/jstatic_NULL_ANALOG_LOCATION_INPUT [& args] (JR/call jfile "./AnalogLocationInput" "jstatic_NULL_ANALOG_LOCATION_INPUT" args))

# Java class AnalogLocationInputFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_addPlayer nil)
(var jm_getInstanceForPlayer nil)
(var jm_getList nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AnalogLocationInputFactory" :f_list nil} jproto))
    (put this :f_list (BasicArrayListD/jnew_0))
    this))
    
(set jm_addPlayer (fn jm_addPlayer [this _playerInputId]
        (var _analogLocationInput (AnalogLocationInput/jstatic_NULL_ANALOG_LOCATION_INPUT))
        (if (< _playerInputId (:jm_size (this :f_list)))
            (do
            (set _analogLocationInput (:jm_get (this :f_list) _playerInputId))))
        (if (= _analogLocationInput (AnalogLocationInput/jstatic_NULL_ANALOG_LOCATION_INPUT))
            (do
            (set _analogLocationInput (AnalogLocationInput/jnew_1 _playerInputId))
            (:jm_add (this :f_list) _analogLocationInput)))))
    
(set jm_getInstanceForPlayer (fn jm_getInstanceForPlayer [this _playerInputId]
    (label jreturn
        (return jreturn (:jm_get (this :f_list) _playerInputId)))))
    
(set jm_getList (fn jm_getList [this]
    (label jreturn
        (return jreturn (this :f_list)))))

(set jproto @{:jm_addPlayer jm_addPlayer :jm_getInstanceForPlayer jm_getInstanceForPlayer :jm_getList jm_getList})


