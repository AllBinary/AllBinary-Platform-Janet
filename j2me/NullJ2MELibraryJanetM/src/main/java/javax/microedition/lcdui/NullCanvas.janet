# Generated Code Do Not Modify
# package javax.microedition.lcdui

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../java/util/Stack :as Stack)
(import ./Canvas :as Canvas)

# Java class NullCanvas
(var jproto nil)
(var jcell_NULL_CANVAS :jnone)
(var jstatic_NULL_CANVAS nil)
(var jsetstatic_NULL_CANVAS nil)
(var jnew_0 nil)
(var jm_setFullScreenMode nil)
(var jm_sizeChanged nil)
(var jm_getCommandStack nil)
(var jm_isCommand nil)
(var jm_addCommand nil)
(var jm_removeCommand nil)
(var jm_removeAllCommands nil)
(var jm_setCommandListener nil)
(var jm_getCustomCommandListener nil)
(var jm_isPaused nil)
(var jm_removePauseCommand nil)
(var jm_pause nil)
(var jm_unPause nil)
(var jm_process nil)
(var jm_paint nil)
(var jm_destroy nil)
(var jm_setPaused nil)
(var jm_pointerDragged nil)
(var jm_pointerPressed nil)
(var jm_pointerReleased nil)

(set jstatic_NULL_CANVAS (fn jstatic_NULL_CANVAS []
  (when (= jcell_NULL_CANVAS :jnone) (set jcell_NULL_CANVAS (jnew_0)))
  jcell_NULL_CANVAS))
(set jsetstatic_NULL_CANVAS (fn jsetstatic_NULL_CANVAS [value] (set jcell_NULL_CANVAS value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullCanvas"} jproto))
    (JR/superInit this (Canvas/jnew_0))
    this))
    
(set jm_setFullScreenMode (fn jm_setFullScreenMode [this _mode]
    nil))
    
(set jm_sizeChanged (fn jm_sizeChanged [this _w _h]
    nil))
    
(set jm_getCommandStack (fn jm_getCommandStack [this]
        (error (JR/newException "RuntimeException"))))
    
(set jm_isCommand (fn jm_isCommand [this _command]
        (error (JR/newException "RuntimeException"))))
    
(set jm_addCommand (fn jm_addCommand [this _command]
    nil))
    
(set jm_removeCommand (fn jm_removeCommand [this _command]
    nil))
    
(set jm_removeAllCommands (fn jm_removeAllCommands [this]
    nil))
    
(set jm_setCommandListener (fn jm_setCommandListener [this _l]
    nil))
    
(set jm_getCustomCommandListener (fn jm_getCustomCommandListener [this]
        (error (JR/newException "RuntimeException"))))
    
(set jm_isPaused (fn jm_isPaused [this]
        (error (JR/newException "RuntimeException"))))
    
(set jm_removePauseCommand (fn jm_removePauseCommand [this]
    nil))
    
(set jm_pause (fn jm_pause [this]
    nil))
    
(set jm_unPause (fn jm_unPause [this]
    nil))
    
(set jm_process (fn jm_process [this]
    nil))
    
(set jm_paint (fn jm_paint [this _graphics]
    nil))
    
(set jm_destroy (fn jm_destroy [this]
    nil))
    
(set jm_setPaused (fn jm_setPaused [this _isPaused]
        (error (JR/newException "RuntimeException"))))
    
(set jm_pointerDragged (fn jm_pointerDragged [this _x _y]
    nil))
    
(set jm_pointerPressed (fn jm_pointerPressed [this _x _y]
    nil))
    
(set jm_pointerReleased (fn jm_pointerReleased [this _x _y]
    nil))

(set jproto (table/setproto @{:jm_setFullScreenMode jm_setFullScreenMode :jm_sizeChanged jm_sizeChanged :jm_getCommandStack jm_getCommandStack :jm_isCommand jm_isCommand :jm_addCommand jm_addCommand :jm_removeCommand jm_removeCommand :jm_removeAllCommands jm_removeAllCommands :jm_setCommandListener jm_setCommandListener :jm_getCustomCommandListener jm_getCustomCommandListener :jm_isPaused jm_isPaused :jm_removePauseCommand jm_removePauseCommand :jm_pause jm_pause :jm_unPause jm_unPause :jm_process jm_process :jm_paint jm_paint :jm_destroy jm_destroy :jm_setPaused jm_setPaused :jm_pointerDragged jm_pointerDragged :jm_pointerPressed jm_pointerPressed :jm_pointerReleased jm_pointerReleased} Canvas/jproto))


