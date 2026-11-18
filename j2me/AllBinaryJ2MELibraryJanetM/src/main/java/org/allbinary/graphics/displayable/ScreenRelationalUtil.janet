# Generated Code Do Not Modify
# package org.allbinary.graphics.displayable

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "./DisplayInfoSingleton" "jm_getInstance" args))

# Java class ScreenRelationalUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getScaleImage nil)
(var jm_getScaleWH nil)
(var jm_getScaleWHA nil)
(var jm_getScaledHeight nil)
(var jm_getScaledHeightAdd nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ScreenRelationalUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getScaleImage (fn jm_getScaleImage [this _image]
    (label jreturn
        (return jreturn (:jm_getScaleWH this (:jm_getWidth _image) (:jm_getHeight _image))))))
    
(set jm_getScaleWH (fn jm_getScaleWH [this _aWidth _aHeight]
    (label jreturn
        (return jreturn (:jm_getScaleWHA this _aWidth _aHeight 20)))))
    
(set jm_getScaleWHA (fn jm_getScaleWHA [this _aWidth _aHeight _add]
    (label jreturn
        (var _displayInfoSingleton (DisplayInfoSingleton/jm_getInstance))
        (var _last (:jm_getLast _displayInfoSingleton))
        (var _width (_last (_displayInfoSingleton :f_WIDTH)))
        (var _height (_last (_displayInfoSingleton :f_HEIGHT)))
        (var _largestSize _width)
        (if (< _largestSize _height)
            (do
            (set _largestSize _height)))
        (var _scale (/ _largestSize _aWidth))
        (return jreturn _scale))))
    
(set jm_getScaledHeight (fn jm_getScaledHeight [this _aWidth _aHeight]
    (label jreturn
        (return jreturn (JR/d2i (* (:jm_getScaleWH this _aWidth _aHeight) _aHeight))))))
    
(set jm_getScaledHeightAdd (fn jm_getScaledHeightAdd [this _aWidth _aHeight _add]
    (label jreturn
        (return jreturn (JR/d2i (* (:jm_getScaleWHA this _aWidth _aHeight _add) _aHeight))))))

(set jproto @{:jm_getScaleImage jm_getScaleImage :jm_getScaleWH jm_getScaleWH :jm_getScaleWHA jm_getScaleWHA :jm_getScaledHeight jm_getScaledHeight :jm_getScaledHeightAdd jm_getScaledHeightAdd})


