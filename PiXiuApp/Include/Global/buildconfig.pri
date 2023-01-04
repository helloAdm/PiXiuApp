CONFIG -=debug_and_release
CONFIG -=debug_and_release_target

#Root Dir
ROOT_DIR = $${PWD}/../..

#Output Dir
CONFIG(debug, debug|release) {
    DESTDIR=$${ROOT_DIR}/Bin/debug
    LIBS+= -L$${ROOT_DIR}/Bin/debug
} else {
    DESTDIR=$${ROOT_DIR}Bin/release
    LIBS+= -L$${ROOT_DIR}/Bin/release
}

#Temp Dir
MOC_DIR     = $${DESTDIR}/temp/$${TARGET}/moc
RCC_DIR     = $${DESTDIR}/temp/$${TARGET}/res
UI_DIR      = $${DESTDIR}/temp/$${TARGET}/ui
OBJECTS_DIR = $${DESTDIR}/temp/$${TARGET}/obj
