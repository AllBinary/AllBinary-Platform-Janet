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

# Java class LifeInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_get nil)
(var jm_set nil)
(var jm_reset nil)
(var jm_add nil)
(var jm_deaths nil)
(var jm_getMaxlives nil)
(var jm_isAlive nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LifeInterface"} jproto))
    this))

    
(set jm_get (fn jm_get [this]
    (error (JR/newException "AbstractMethodError" "get"))))
    
(set jm_set (fn jm_set [this _lives]
    (error (JR/newException "AbstractMethodError" "set"))))
    
(set jm_reset (fn jm_reset [this]
    (error (JR/newException "AbstractMethodError" "reset"))))
    
(set jm_add (fn jm_add [this _lives]
    (error (JR/newException "AbstractMethodError" "add"))))
    
(set jm_deaths (fn jm_deaths [this _lives]
    (error (JR/newException "AbstractMethodError" "deaths"))))
    
(set jm_getMaxlives (fn jm_getMaxlives [this]
    (error (JR/newException "AbstractMethodError" "getMaxlives"))))
    
(set jm_isAlive (fn jm_isAlive [this]
    (error (JR/newException "AbstractMethodError" "isAlive"))))

(set jproto @{:jm_get jm_get :jm_set jm_set :jm_reset jm_reset :jm_add jm_add :jm_deaths jm_deaths :jm_getMaxlives jm_getMaxlives :jm_isAlive jm_isAlive})


