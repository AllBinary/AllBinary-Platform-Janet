# Generated Code Do Not Modify
# package org.allbinary.configuration

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- MainFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/game/configuration/feature/MainFeatureFactory" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class ApplicationConfiguration
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_read nil)
(var jm_write nil)
(var jm_update nil)
(var jm_setFullscreen nil)
(var jm_isFullscreen nil)
(var jm_setShowTitleBar nil)
(var jm_isShowTitleBar nil)
(var jm_setProgressBarView nil)
(var jm_isProgressBarView nil)
(var jm_toString nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ApplicationConfiguration" :f_logUtil nil :f_fullscreen false :f_showTitleBar false :f_progressBarView false} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_fullscreen true)
    (put this :f_showTitleBar false)
    (put this :f_progressBarView false)
        (try
            (do
            (:jm_read this))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_CONSTRUCTOR) _e))))
    this))
    
(set jm_read (fn jm_read [this]
        (:jm_setFullscreen this true)
        (:jm_setProgressBarView this false)
        (:jm_setShowTitleBar this false)
        (:jm_putF (this :f_logUtil) (string "Read Configuration: " (:jm_toString this)) this "read")))
    
(set jm_write (fn jm_write [this]
    nil))
    
(set jm_update (fn jm_update [this _gameFeature]
        (if (= _gameFeature ((MainFeatureFactory/jm_getInstance) :f_FULL_SCREEN))
            (do
            (var _features (Features/jm_getInstance))
            (if (:jm_isFeature _features _gameFeature)
                (do
                (if (not (:jm_isFullscreen this))
                    (do
                    (:jm_setFullscreen this true)
                    (:jm_write this))))
                (do
                (if (:jm_isFullscreen this)
                    (do
                    (:jm_setFullscreen this false)
                    (:jm_write this)))))))))
    
(set jm_setFullscreen (fn jm_setFullscreen [this _fullscreen]
        (set (this :f_fullscreen) _fullscreen)))
    
(set jm_isFullscreen (fn jm_isFullscreen [this]
    (label jreturn
        (return jreturn (this :f_fullscreen)))))
    
(set jm_setShowTitleBar (fn jm_setShowTitleBar [this _showTitleBar]
        (set (this :f_showTitleBar) _showTitleBar)))
    
(set jm_isShowTitleBar (fn jm_isShowTitleBar [this]
    (label jreturn
        (return jreturn (this :f_showTitleBar)))))
    
(set jm_setProgressBarView (fn jm_setProgressBarView [this _progressBarView]
        (set (this :f_progressBarView) _progressBarView)))
    
(set jm_isProgressBarView (fn jm_isProgressBarView [this]
    (label jreturn
        (return jreturn (this :f_progressBarView)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "isFullscreen: ")
        (:jm_appendboolean _stringBuffer (:jm_isFullscreen this))
        (:jm_append _stringBuffer " isProgressBarView: ")
        (:jm_appendboolean _stringBuffer (:jm_isProgressBarView this))
        (:jm_append _stringBuffer " isShowTitleBar: ")
        (:jm_appendboolean _stringBuffer (:jm_isShowTitleBar this))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_read jm_read :jm_write jm_write :jm_update jm_update :jm_setFullscreen jm_setFullscreen :jm_isFullscreen jm_isFullscreen :jm_setShowTitleBar jm_setShowTitleBar :jm_isShowTitleBar jm_isShowTitleBar :jm_setProgressBarView jm_setProgressBarView :jm_isProgressBarView jm_isProgressBarView :jm_toString jm_toString})


