TRANSLATIONS += translations/svgcleaner_cs_CS.ts \
                translations/svgcleaner_ru_RU.ts \
                translations/svgcleaner_zh_TW.ts

CODECFORTR = UTF-8

isEmpty(QMAKE_LRELEASE) {
    !exists($$QMAKE_LRELEASE) { QMAKE_LRELEASE = lrelease }
}

updateqm.input = TRANSLATIONS
updateqm.output = ${QMAKE_FILE_BASE}.qm
updateqm.commands = $$QMAKE_LRELEASE -silent ${QMAKE_FILE_IN} -qm ${QMAKE_FILE_BASE}.qm
updateqm.CONFIG += no_link target_predeps
QMAKE_EXTRA_COMPILERS += updateqm
