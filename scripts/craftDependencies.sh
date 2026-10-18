#!/bin/bash


# First, we set the various dependencies of kdeconnect-kde to be installed from the code in the master branch.

craft --set version=master kdeconnect-kde
craft --set version=master craft
craft --set version=master kirigami
craft --set version=master attica
craft --set version=master kde/frameworks/tier3
craft --set version=master dev-utils/snoretoast
craft --set version=master kde/frameworks/tier1/sonnet
craft --set version=master libs/libssh2
craft --set version=master kde/frameworks/tier3/kio
craft --set version=master kde/kdenetwork/kio-extras
craft --set version=master kde/frameworks/tier1/kcoreaddons
craft --set version=master kde/frameworks/tier2/kauth
craft --set version=master kde/frameworks/extra-cmake-modules
craft --set version=master kde/frameworks/tier1/kwindowsystem
craft --set version=master kde/frameworks/tier1/kconfig
craft --set version=master kde/frameworks/tier1/kcodecs
craft --set version=master kde/frameworks/tier1/kwidgetsaddons
craft --set version=master kde/frameworks/tier1/kitemviews 
craft --set version=master kde/frameworks/tier1/kguiaddons 
craft --set version=master kde/frameworks/tier2/kcrash 
craft --set version=master kde/frameworks/tier1/kdbusaddons 
craft --set version=master kde/frameworks/tier2/kdoctools 
craft --set version=master kde/frameworks/tier1/karchive 
craft --set version=master kde/frameworks/tier2/kcompletion 
craft --set version=master kde/frameworks/tier3/kiconthemes 
craft --set version=master kde/frameworks/tier1/solid 
craft --set version=master kcontacts
craft --set version=master ki18n
craft --set version=master kjobwidgets
craft --set version=master kpackage
craft --set version=master breeze-icons
craft --set version=master kconfigwidgets
