# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.displayable

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- OpenGLFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" "jm_getInstance" args))
(import ../../../../java/lang/Thread :as Thread)
(import ./RepaintBehavior :as RepaintBehavior)
(defn- RepaintRunnable/jnew_1 [& args] (JR/call jfile "./RepaintRunnable" "jnew_1" args))

# Java class AlwaysRepaintBehavior
(var jproto nil)
(var jcell_instanceC :jnone)
(var jstatic_instanceC nil)
(var jsetstatic_instanceC nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_repaint nil)
(var jm_onChangeRepaint nil)

(set jstatic_instanceC (fn jstatic_instanceC []
  (when (= jcell_instanceC :jnone) (set jcell_instanceC (jnew_0)))
  jcell_instanceC))
(set jsetstatic_instanceC (fn jsetstatic_instanceC [value] (set jcell_instanceC value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AlwaysRepaintBehavior" :f_NAME nil} jproto))
    (put this :f_NAME "AlwaysRepaintBehavior")
    (JR/superInit this (RepaintBehavior/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instanceC)))))
    
(set jm_repaint (fn jm_repaint [this _canvas]
        (var _features (Features/jm_getInstance))
        (var _openGLFeatureFactory (OpenGLFeatureFactory/jm_getInstance))
        (if (:jm_isFeature _features (_openGLFeatureFactory :f_OPENGL))
            (do
            (:jm_process (DisplayInfoSingleton/jm_getInstance)))
            (do
            (var _thread (Thread/jnew_2 (RepaintRunnable/jnew_1 _canvas) (this :f_NAME)))
            (:jm_start _thread)))))
    
(set jm_onChangeRepaint (fn jm_onChangeRepaint [this _canvas]
    nil))

(set jproto (table/setproto @{:jm_repaint jm_repaint :jm_onChangeRepaint jm_onChangeRepaint} RepaintBehavior/jproto))


