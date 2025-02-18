rm(list = ls())
library(dplyr)
library(tm)#Mineria de texto
library(udpipe)#Normalizar o etiquetado
library(hunspell)#Ortografia
library(syuzhet)#Analisis se sentimiento
options(StringAsFactors=FALSE)
Sys.setlocale(category = "LC_ALL", locale = "es_ES.UTF-8")
load("larazon.RData")
###############################
#ortografia
texto<-"ola mano que fue abla  mi eztimadho"
list_dictionaries()
aux<-hunspell(texto,dict="es_ES")
hunspell_suggest(aux[[1]],dict="es_ES")
bd$titular
hunspell(bd$titular[1:5],dict="es_ES")
#Asume que cada titular ya es un documento aparte
corpus_larazon<-VCorpus(VectorSource(bd$titular))
corpus_larazon[[20]]$content
