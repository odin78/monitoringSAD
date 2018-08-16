#!/usr/bin/env python3 ---pour la portabilité entre environnements unix

#import d'un module ou d'un package

import modulename

#import d'une seule fonction d'un module

from modulename import functioname

#importer un module en le renommant

import packagename.modulename as newname

#variables classiques: adresse mémoire où est stockée un valeur
[minusculePartiesaccoléeesenmajuscule]

#variables privées d'une classe: commençent toujours par un tiret bas ou un underscore

#noms de classes en majuscule

#noms de méthodes en minusculePartiesaccoléeesenmajuscule

#indentation
def printme( str ):
....print str
....return;

#classes
  class Eggs:
        ```This class defines an egg```
        def __init__(self):
            self.__cooked = 0
        def do_cook(self):
           self.__cooked = 1
        def is_cooked(self):
            return self.__coocked