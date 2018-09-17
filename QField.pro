TEMPLATE = subdirs
CONFIG += c++11

TRANSLATIONS = $$PWD/i18n/*.ts

QMAKE_EXTRA_COMPILERS += lrelease
lrelease.input         = TRANSLATIONS
lrelease.output        = ${QMAKE_FILE_BASE}.qm
lrelease.commands      = $$[QT_INSTALL_BINS]/lrelease ${QMAKE_FILE_IN} -qm ${QMAKE_FILE_BASE}.qm
lrelease.CONFIG       += no_link target_predeps

SUBDIRS += 3rdparty
SUBDIRS += src

src.depends=3rdparty
