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
# package org.allbinary.game.ag.life

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class Life
(var jproto nil)
(var jcell_NO_LIFE :jnone)
(var jstatic_NO_LIFE nil)
(var jsetstatic_NO_LIFE nil)
(var jnew_2 nil)
(var jm_createLife nil)
(var jm_get nil)
(var jm_set nil)
(var jm_reset nil)
(var jm_add nil)
(var jm_isAlive nil)
(var jm_getMaxlives nil)
(var jm_reachedLimit nil)
(var jm_deaths nil)
(var jm_getStartLives nil)
(var jm_setStartLives nil)

(set jstatic_NO_LIFE (fn jstatic_NO_LIFE []
  (when (= jcell_NO_LIFE :jnone) (set jcell_NO_LIFE (jm_createLife)))
  jcell_NO_LIFE))
(set jsetstatic_NO_LIFE (fn jsetstatic_NO_LIFE [value] (set jcell_NO_LIFE value)))

    
(set jm_createLife (fn jm_createLife []
    (label jreturn
        (try
            (do
            (return jreturn (jnew_2 (JR/i16 0) (JR/i16 0))))
            ([_e] (do
            (error (JR/newException "RuntimeException"))))))))
    
(set jnew_2 (fn jnew_2 [_lives _maxlives]
    (var this (table/setproto @{:jclass "Life" :f_lives 0 :f_startLives 0 :f_maxlives 0} jproto))
    
    
    
        (set (this :f_maxlives) _maxlives)
        (if (> _lives (this :f_maxlives))
            (do
            (error (JR/newException "Exception" "To Many Lives"))))
        (set (this :f_lives) _lives)
        (set (this :f_startLives) _lives)
    this))
    
(set jm_get (fn jm_get [this]
    (label jreturn
        (return jreturn (this :f_lives)))))
    
(set jm_set (fn jm_set [this _lives]
        (set (this :f_lives) _lives)))
    
(set jm_reset (fn jm_reset [this]
        (set (this :f_lives) (this :f_startLives))))
    
(set jm_add (fn jm_add [this _lives]
        (if (not (:jm_reachedLimit this))
            (do
            (if (<= (JR/i32 (+ (this :f_lives) _lives)) (:jm_getMaxlives this))
                (do
                (set (this :f_lives) (JR/i16 (JR/i32 (+ (this :f_lives) _lives)))))
                (do
                (set (this :f_lives) (:jm_getMaxlives this))))))))
    
(set jm_isAlive (fn jm_isAlive [this]
    (label jreturn
        (if (<= (this :f_lives) 0)
            (do
            (return jreturn false))
            (do
            (return jreturn true))))))
    
(set jm_getMaxlives (fn jm_getMaxlives [this]
    (label jreturn
        (return jreturn (this :f_maxlives)))))
    
(set jm_reachedLimit (fn jm_reachedLimit [this]
    (label jreturn
        (if (or (> (this :f_lives) (this :f_maxlives)) (< (this :f_lives) 0))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_deaths (fn jm_deaths [this _lives]
        (if (not (:jm_reachedLimit this))
            (do
            (if (>= (JR/i32 (- (this :f_lives) _lives)) 0)
                (do
                (set (this :f_lives) (JR/i16 (JR/i32 (- (this :f_lives) _lives)))))
                (do
                (set (this :f_lives) 0)))))))
    
(set jm_getStartLives (fn jm_getStartLives [this]
    (label jreturn
        (return jreturn (this :f_startLives)))))
    
(set jm_setStartLives (fn jm_setStartLives [this _startLives]
        (set (this :f_startLives) _startLives)))

(set jproto @{:jm_get jm_get :jm_set jm_set :jm_reset jm_reset :jm_add jm_add :jm_isAlive jm_isAlive :jm_getMaxlives jm_getMaxlives :jm_reachedLimit jm_reachedLimit :jm_deaths jm_deaths :jm_getStartLives jm_getStartLives :jm_setStartLives jm_setStartLives})


