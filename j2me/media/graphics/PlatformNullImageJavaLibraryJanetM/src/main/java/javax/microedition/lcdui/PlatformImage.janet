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
# package javax.microedition.lcdui

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- NullImage/jstatic_NULL_IMAGE [& args] (JR/call jfile "./NullImage" "jstatic_NULL_IMAGE" args))

#PlatformNullImageJavaLibrary
# Java class PlatformImage
(var jproto nil)
(var jnew_0 nil)
(var jm_getImage nil)
(var jm_getSurfaceWidth nil)
(var jm_getSurfaceHeight nil)
(var jm_getWidth nil)
(var jm_getHeight nil)
(var jm_getGraphics nil)
(var jm_drawImage nil)
(var jm_drawRegion nil)
(var jm_getRGB nil)
(var jm_setRGB nil)
(var jm_getData nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PlatformImage"} jproto))
    this))

    
(set jm_getImage (fn jm_getImage [this _graphicsSurface2]
    (label jreturn
        (return jreturn (NullImage/jstatic_NULL_IMAGE)))))
    
(set jm_getSurfaceWidth (fn jm_getSurfaceWidth [this _graphicsSurface2 _width]
    (label jreturn
        (return jreturn _width))))
    
(set jm_getSurfaceHeight (fn jm_getSurfaceHeight [this _graphicsSurface2 _height]
    (label jreturn
        (return jreturn _height))))
    
(set jm_getWidth (fn jm_getWidth [this _image _width]
    (label jreturn
        (return jreturn _width))))
    
(set jm_getHeight (fn jm_getHeight [this _image _height]
    (label jreturn
        (return jreturn _height))))
    
(set jm_getGraphics (fn jm_getGraphics [this _graphicsSurface _width _height _image]
        (error (JR/newException "RuntimeException"))))
    
(set jm_drawImage (fn jm_drawImage [this _image _x _y _anchor _g2 _g]
    nil))
    
(set jm_drawRegion (fn jm_drawRegion [this _image _x_src _y_src _width _height _transform _x_dst _y_dst _anchor _g]
    nil))
    
(set jm_getRGB (fn jm_getRGB [this _argb _offset _scanlength _x _y _width _height _image]
    nil))
    
(set jm_setRGB (fn jm_setRGB [this _argb _offset _scanlength _x _y _width _height _image]
    nil))
    
(set jm_getData (fn jm_getData [this _image]
    (label jreturn
        (return jreturn ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY)))))

(set jproto @{:jm_getImage jm_getImage :jm_getSurfaceWidth jm_getSurfaceWidth :jm_getSurfaceHeight jm_getSurfaceHeight :jm_getWidth jm_getWidth :jm_getHeight jm_getHeight :jm_getGraphics jm_getGraphics :jm_drawImage jm_drawImage :jm_drawRegion jm_drawRegion :jm_getRGB jm_getRGB :jm_setRGB jm_setRGB :jm_getData jm_getData})


