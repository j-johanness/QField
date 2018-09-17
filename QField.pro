TEMPLATE = subdirs
CONFIG += c++11

TRANSLATIONS = i18n/*.ts

SUBDIRS += 3rdparty
SUBDIRS += src

src.depends=3rdparty
