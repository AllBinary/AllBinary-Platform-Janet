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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- Rectangle/jnew_3 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/Rectangle" "jnew_3" args))
(defn- RectangleFactory/jstatic_SINGLETON [& args] (JR/call jfile "../../../../../org/allbinary/graphics/RectangleFactory" "jstatic_SINGLETON" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- MyFontProcessor/jm_defaultStringWidth [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_defaultStringWidth" args))
(defn- OpenGLFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" "jm_getInstance" args))
(defn- SWTJOGLProcessor/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/threed/SWTJOGLProcessor" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class MyFormUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_updateMeasurement nil)
(var jm_getPopupMenuRectangle nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MyFormUtil" :f_logUtil nil :f_commonStrings nil :f_popupMenuRectangle nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_popupMenuRectangle (RectangleFactory/jstatic_SINGLETON))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (var _displayInfo (DisplayInfoSingleton/jm_getInstance))
        (var _features (Features/jm_getInstance))
        (var _isOpenGL (:jm_isDefault _features ((OpenGLFeatureFactory/jm_getInstance) :f_OPENGL)))
        (var _TOTAL_CHAR_WIDTH (if (and (:jm_isJOGL (SWTJOGLProcessor/jm_getInstance)) _isOpenGL) 2 3))
        (var _width (MyFontProcessor/jm_defaultStringWidth _font _TOTAL_CHAR_WIDTH))
        (var _pointFactory (PointFactory/jm_getInstance))
        (if (< (:jm_getLastHeight _displayInfo) 320)
            (do
            (set (this :f_popupMenuRectangle) (Rectangle/jnew_3 (:jm_createXY _pointFactory 0 25) _width (JR/i32 (+ (JR/i32 (* (:jm_getHeight _font) 4)) 2)))))
            (do
            (set (this :f_popupMenuRectangle) (Rectangle/jnew_3 (:jm_createXY _pointFactory 0 (JR/i32 (- (:jm_getLastHalfHeight _displayInfo) 70))) _width (JR/i32 (* (:jm_getHeight _font) 5))))))))
    
(set jm_getPopupMenuRectangle (fn jm_getPopupMenuRectangle [this]
    (label jreturn
        (return jreturn (this :f_popupMenuRectangle)))))

(set jproto @{:jm_updateMeasurement jm_updateMeasurement :jm_getPopupMenuRectangle jm_getPopupMenuRectangle})


