# Generated Code Do Not Modify
# package org.allbinary.layer

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- SynchObject/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/thread/SynchObject" "jnew_0" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- ABSystemWrapper/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/ABSystemWrapper" "jm_getInstance" args))

# Java class LayerManager
(var jproto nil)
(var jnew_1 nil)
(var jm_contains nil)
(var jm_update nil)
(var jm_insert nil)
(var jm_append nil)
(var jm_appendAt nil)
(var jm_remove nil)
(var jm_getLayerAt nil)
(var jm_getSize nil)
(var jm_cleanup nil)
(var jm_paint nil)

    
(set jnew_1 (fn jnew_1 [_layerManagerLogging]
    (var this (table/setproto @{:jclass "LayerManager" :f_logUtil nil :f_commonStrings nil :f_systemWrapper nil :f_tsUtil nil :f_layerManagerLogging nil :f_list nil :f_anyType nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_systemWrapper (ABSystemWrapper/jm_getInstance))
    (put this :f_tsUtil (TsUtil/jm_getInstance))
    
    (put this :f_list (BasicArrayListD/jnew_0))
    (put this :f_anyType (SynchObject/jnew_0))
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this ((this :f_commonStrings) :f_CONSTRUCTOR))
        (set (this :f_layerManagerLogging) _layerManagerLogging)
    this))
    
(set jm_contains (fn jm_contains [this _layerInterface]
    (label jreturn
        (return jreturn (:jm_contains (this :f_list) _layerInterface)))))
    
(set jm_update (fn jm_update [this _layerInterface]
    (label jreturn
        (var _had (:jm_remove (this :f_list) _layerInterface))
        (if _had
            (do
            (var _nextLayerInterface nil)
            (var _size (:jm_size (this :f_list)))
            (do
                (var _index 0)
                (while (< _index _size)
                    (do
                (set _nextLayerInterface (:jm_get (this :f_list) _index))
                (if (> (:jm_getZP _layerInterface) (:jm_getZP _nextLayerInterface))
                    (do
                    (:jm_addAt (this :f_list) _index _layerInterface)
                    (return jreturn))))
                    (do (set _index (JR/i32 (+ _index 1))))))
            (:jm_add (this :f_list) _layerInterface))))))
    
(set jm_insert (fn jm_insert [this _layerInterface]
    (label jreturn
        (var _nextLayerInterface nil)
        (var _size (:jm_size (this :f_list)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _nextLayerInterface (:jm_get (this :f_list) _index))
            (if (> (:jm_getZP _layerInterface) (:jm_getZP _nextLayerInterface))
                (do
                (:jm_appendAt this _layerInterface _index)
                (return jreturn))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_append this _layerInterface))))
    
(set jm_append (fn jm_append [this _layerInterface]
        (:jm_append (this :f_layerManagerLogging) _layerInterface)
        (:jm_add (this :f_list) _layerInterface)))
    
(set jm_appendAt (fn jm_appendAt [this _layerInterface _index]
        (:jm_appendAt (this :f_layerManagerLogging) _layerInterface _index)
        (:jm_addAt (this :f_list) _index _layerInterface)))
    
(set jm_remove (fn jm_remove [this _layerInterface]
        (do
            (:jm_remove (this :f_layerManagerLogging) _layerInterface)
            (var _result (:jm_remove (this :f_list) _layerInterface))
            (:jm_removeResult (this :f_layerManagerLogging) this _layerInterface _result))))
    
(set jm_getLayerAt (fn jm_getLayerAt [this _index]
    (label jreturn
        (return jreturn (((this :f_list) :f_objectArray) _index)))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn (:jm_size (this :f_list))))))
    
(set jm_cleanup (fn jm_cleanup [this]
        (do
            (:jm_clear (this :f_list))
            (:jm_clear (this :f_layerManagerLogging))
            (:jm_gc (this :f_tsUtil))
            (:jm_gc (this :f_tsUtil)))))
    
(set jm_paint (fn jm_paint [this _g _x _y]
        (do
            (var _comp nil)
            (do
                (var _index (:jm_size (this :f_list)))
                (while (>= (set _index (JR/i32 (- _index 1))) 0)
                    (do
                (set _comp (((this :f_list) :f_objectArray) _index))
                (if (and (not (nil? _comp)) (:jm_isVisible _comp))
                    (do
                    (:jm_paint _comp _g)))))))))

(set jproto @{:jm_contains jm_contains :jm_update jm_update :jm_insert jm_insert :jm_append jm_append :jm_appendAt jm_appendAt :jm_remove jm_remove :jm_getLayerAt jm_getLayerAt :jm_getSize jm_getSize :jm_cleanup jm_cleanup :jm_paint jm_paint})


