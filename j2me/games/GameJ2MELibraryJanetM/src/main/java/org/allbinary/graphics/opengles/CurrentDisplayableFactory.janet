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
# package org.allbinary.graphics.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- J2MEUtil/jm_isHTML [& args] (JR/call jfile "../../../../org/allbinary/J2MEUtil" "jm_isHTML" args))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- GameInputMappingCanvas/jstatic_NAME [& args] (JR/call jfile "../../../../org/allbinary/game/displayable/canvas/GameInputMappingCanvas" "jstatic_NAME" args))
(defn- GameInputMappingInstructionsCanvas/jstatic_NAME [& args] (JR/call jfile "../../../../org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas" "jstatic_NAME" args))
(defn- NullDisplayable/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/displayable/canvas/NullDisplayable" "jm_getInstance" args))
(defn- NullWaitGameRunnable/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/displayable/canvas/NullWaitGameRunnable" "jm_getInstance" args))
(defn- SWTUtil/jstatic_isSWT [& args] (JR/call jfile "../../../../org/allbinary/game/layer/SWTUtil" "jstatic_isSWT" args))
(defn- SWTUtil/jstatic_SWT [& args] (JR/call jfile "../../../../org/allbinary/game/layer/SWTUtil" "jstatic_SWT" args))
(defn- HighScoresCanvas/jstatic_NAME [& args] (JR/call jfile "../../../../org/allbinary/game/score/displayable/HighScoresCanvas" "jstatic_NAME" args))
(defn- GraphicsStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/GraphicsStrings" "jm_getInstance" args))
(defn- CanvasStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/CanvasStrings" "jm_getInstance" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- NullRunnable/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/thread/NullRunnable" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- OpenGLFeatureFactory/jm_getInstance [& args] (JR/call jfile "./OpenGLFeatureFactory" "jm_getInstance" args))

# Java class CurrentDisplayableFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_setMyCanvas nil)
(var jm_setDisplayable nil)
(var jm_setOpenGlReadydisplayable nil)
(var jm_getOpenGlReadydisplayable nil)
(var jm_setRunnable nil)
(var jm_clearRunnable nil)
(var jm_update nil)
(var jm_getDisplayable nil)
(var jm_getUsedRunnable nil)
(var jm_setUsedRunnable nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CurrentDisplayableFactory" :f_commonStrings nil :f_canvasStrings nil :f_stringUtil nil :f_SET_DISPLAYABLE nil :f_SET_RUNNABLE nil :f_CLEAR_RUNNABLE nil :f_SET_USED_RUNNABLE nil :f_RUNNABLE nil :f_RUNNABLE_WAS_ALREADY_IN_USE nil :f_DEFAULT_CHILD_NAME_LIST nil :f_displayable nil :f_openGlReadydisplayable nil :f_runnable nil :f_usedRunnable nil} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_canvasStrings (CanvasStrings/jm_getInstance))
    (put this :f_stringUtil (StringUtil/jm_getInstance))
    (put this :f_SET_DISPLAYABLE "setDisplayable")
    (put this :f_SET_RUNNABLE "setRunnable")
    (put this :f_CLEAR_RUNNABLE "clearRunnable")
    (put this :f_SET_USED_RUNNABLE "setUsedRunnable")
    (put this :f_RUNNABLE "Runnable: ")
    (put this :f_RUNNABLE_WAS_ALREADY_IN_USE "Runnable was already in use: ")
    (put this :f_DEFAULT_CHILD_NAME_LIST (BasicArrayListD/jnew_0))
    (put this :f_displayable (NullDisplayable/jm_getInstance))
    (put this :f_openGlReadydisplayable (NullDisplayable/jm_getInstance))
    (put this :f_runnable (NullWaitGameRunnable/jm_getInstance))
    (put this :f_usedRunnable (NullWaitGameRunnable/jm_getInstance))
        (:jm_add (this :f_DEFAULT_CHILD_NAME_LIST) ((this :f_canvasStrings) :f_ABOUT))
        (:jm_add (this :f_DEFAULT_CHILD_NAME_LIST) ((this :f_canvasStrings) :f_OPTIONS))
        (:jm_add (this :f_DEFAULT_CHILD_NAME_LIST) (GameInputMappingCanvas/jstatic_NAME))
        (:jm_add (this :f_DEFAULT_CHILD_NAME_LIST) (GameInputMappingInstructionsCanvas/jstatic_NAME))
        (:jm_add (this :f_DEFAULT_CHILD_NAME_LIST) (HighScoresCanvas/jstatic_NAME))
    this))
    
(set jm_setMyCanvas (fn jm_setMyCanvas [this _displayable]
    (label jreturn
        (if (= (JR/className (this :f_displayable)) "MyCanvas")
            (do
            (if (:jm_hasChild _displayable (this :f_displayable))
                (do
                (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Child Displayable is already set for: ") (:jm_toString_1 (this :f_stringUtil) _displayable))) this (this :f_SET_DISPLAYABLE))
                (return jreturn)))))
        (:jm_setDisplayable this _displayable))))
    
(set jm_setDisplayable (fn jm_setDisplayable [this _displayable]
        (set (this :f_displayable) _displayable)
        (:jm_setOpenGlReadydisplayable this _displayable)))
    
(set jm_setOpenGlReadydisplayable (fn jm_setOpenGlReadydisplayable [this _openGlReadydisplayable]
        (set (this :f_openGlReadydisplayable) _openGlReadydisplayable)
        (:jm_update this)))
    
(set jm_getOpenGlReadydisplayable (fn jm_getOpenGlReadydisplayable [this]
    (label jreturn
        (return jreturn (this :f_openGlReadydisplayable)))))
    
(set jm_setRunnable (fn jm_setRunnable [this _runnable]
        (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_RUNNABLE)) (:jm_toString_1 (this :f_stringUtil) _runnable))) this (this :f_SET_RUNNABLE))
        (set (this :f_runnable) _runnable)
        (if (not= (this :f_usedRunnable) (this :f_runnable))
            (do
            (:jm_update this))
            (do
            (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_RUNNABLE_WAS_ALREADY_IN_USE)) (:jm_toString_1 (this :f_stringUtil) _runnable))) this (this :f_SET_RUNNABLE))))))
    
(set jm_clearRunnable (fn jm_clearRunnable [this]
        (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_RUNNABLE)) (:jm_toString_1 (this :f_stringUtil) (NullRunnable/jm_getInstance)))) this (this :f_CLEAR_RUNNABLE))
        (:jm_setUsedRunnable this (NullWaitGameRunnable/jm_getInstance))))
    
(set jm_update (fn jm_update [this]
        (do
            (var _commonSeps (CommonSeps/jm_getInstance))
            (var _features (Features/jm_getInstance))
            (var _stringMaker (StringMaker/jnew_0))
            (:jm_append _stringMaker (:jm_toString_1 (this :f_stringUtil) (this :f_openGlReadydisplayable)))
            (if (and (SWTUtil/jstatic_isSWT) (not (:jm_isDefault _features ((OpenGLFeatureFactory/jm_getInstance) :f_OPENGL))))
                (do
                (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (:jm_append (:jm_append (:jm_append _stringMaker (_commonSeps :f_SPACE)) (SWTUtil/jstatic_SWT)) (_commonSeps :f_SPACE)) (this :f_RUNNABLE)) (:jm_toString_1 (this :f_stringUtil) (NullRunnable/jm_getInstance)))) this ((this :f_commonStrings) :f_UPDATE))
                (:jm_setUsedRunnable this (NullWaitGameRunnable/jm_getInstance)))
                (if (J2MEUtil/jm_isHTML)
                (do
                (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (:jm_append (:jm_append (:jm_append _stringMaker (_commonSeps :f_SPACE)) ((GraphicsStrings/jm_getInstance) :f_HTML)) (_commonSeps :f_SPACE)) (this :f_RUNNABLE)) (:jm_toString_1 (this :f_stringUtil) (this :f_runnable)))) this ((this :f_commonStrings) :f_UPDATE))
                (:jm_setUsedRunnable this (this :f_runnable)))
                (if (or (or (= (JR/className (this :f_openGlReadydisplayable)) "DemoCanvas") (= (JR/className (this :f_openGlReadydisplayable)) "AllBinaryGameCanvas")) (:jm_isDefault _features ((OpenGLFeatureFactory/jm_getInstance) :f_OPENGL)))
                (do
                (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (:jm_append (:jm_append (:jm_append _stringMaker (_commonSeps :f_SPACE)) (JR/toString ((OpenGLFeatureFactory/jm_getInstance) :f_OPENGL))) (_commonSeps :f_SPACE)) (this :f_RUNNABLE)) (:jm_toString_1 (this :f_stringUtil) (this :f_runnable)))) this ((this :f_commonStrings) :f_UPDATE))
                (:jm_setUsedRunnable this (this :f_runnable)))
                (do
                (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append _stringMaker (this :f_RUNNABLE)) (:jm_toString_1 (this :f_stringUtil) (NullRunnable/jm_getInstance)))) this ((this :f_commonStrings) :f_UPDATE))
                (:jm_setUsedRunnable this (NullWaitGameRunnable/jm_getInstance)))))))))
    
(set jm_getDisplayable (fn jm_getDisplayable [this]
    (label jreturn
        (return jreturn (this :f_displayable)))))
    
(set jm_getUsedRunnable (fn jm_getUsedRunnable [this]
    (label jreturn
        (return jreturn (this :f_usedRunnable)))))
    
(set jm_setUsedRunnable (fn jm_setUsedRunnable [this _usedRunnable]
        (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_RUNNABLE)) (:jm_toString_1 (this :f_stringUtil) (this :f_runnable))) ((CommonSeps/jm_getInstance) :f_COLON_SEP)) (:jm_toString_1 (this :f_stringUtil) _usedRunnable))) this (this :f_SET_USED_RUNNABLE))
        (set (this :f_usedRunnable) _usedRunnable)))

(set jproto @{:jm_setMyCanvas jm_setMyCanvas :jm_setDisplayable jm_setDisplayable :jm_setOpenGlReadydisplayable jm_setOpenGlReadydisplayable :jm_getOpenGlReadydisplayable jm_getOpenGlReadydisplayable :jm_setRunnable jm_setRunnable :jm_clearRunnable jm_clearRunnable :jm_update jm_update :jm_getDisplayable jm_getDisplayable :jm_getUsedRunnable jm_getUsedRunnable :jm_setUsedRunnable jm_setUsedRunnable})


