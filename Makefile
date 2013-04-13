#############################################################################
# Makefile for building: TestCPP11
# Generated by qmake (3.0) (Qt 5.0.2) on: ven 12. apr 17:09:24 2013
# Project:  TestCPP11.pro
# Template: app
# Command: C:\Qt\Qt5.0.2\5.0.2\mingw47_32\bin\qmake.exe -spec win32-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile TestCPP11.pro
#############################################################################

MAKEFILE      = Makefile

first: debug
install: debug-install
uninstall: debug-uninstall
QMAKE         = C:\Qt\Qt5.0.2\5.0.2\mingw47_32\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = $(COPY)
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = $(COPY_FILE)
INSTALL_PROGRAM = $(COPY_FILE)
INSTALL_DIR   = $(COPY_DIR)
DEL_FILE      = del
SYMLINK       = 
DEL_DIR       = rmdir
MOVE          = move
SUBTARGETS    =  \
		debug \
		release


debug: FORCE
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_first: FORCE
	$(MAKE) -f $(MAKEFILE).Debug 
debug-all: FORCE
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: FORCE
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: FORCE
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: FORCE
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: FORCE
	$(MAKE) -f $(MAKEFILE).Debug uninstall
release: FORCE
	$(MAKE) -f $(MAKEFILE).Release
release-make_first: FORCE
	$(MAKE) -f $(MAKEFILE).Release 
release-all: FORCE
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: FORCE
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: FORCE
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: FORCE
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: FORCE
	$(MAKE) -f $(MAKEFILE).Release uninstall

Makefile: TestCPP11.pro C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/win32-g++/qmake.conf C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/spec_pre.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/device_config.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/common/shell-win32.conf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/qconfig.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_axbase.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_axcontainer.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_axserver.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_bootstrap.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_clucene.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_concurrent.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_core.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_declarative.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_designer.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_designercomponents.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_gui.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_help.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_multimedia.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_multimediawidgets.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_network.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_opengl.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_platformsupport.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_printsupport.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_qml.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_qmldevtools.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_qmltest.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_qtmultimediaquicktools.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_quick.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_quickparticles.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_script.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_scripttools.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_sql.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_svg.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_testlib.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_uitools.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_v8.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_webkit.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_webkitwidgets.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_widgets.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_xml.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/modules/qt_lib_xmlpatterns.pri \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/qt_functions.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/qt_config.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/win32-g++/qmake.conf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/spec_post.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/exclusive_builds.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/default_pre.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/win32/default_pre.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/resolve_config.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/default_post.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/win32/console.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/qml_debug.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/declarative_debug.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/win32/rtti.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/warn_on.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/testcase_targets.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/exceptions.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/yacc.prf \
		C:/Qt/Qt5.0.2/5.0.2/mingw47_32/mkspecs/features/lex.prf \
		TestCPP11.pro
	$(QMAKE) -spec win32-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile TestCPP11.pro
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\spec_pre.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\device_config.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\common\shell-win32.conf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\qconfig.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_axbase.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_axcontainer.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_axserver.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_bootstrap.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_clucene.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_concurrent.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_core.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_declarative.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_designer.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_designercomponents.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_gui.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_help.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_multimedia.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_multimediawidgets.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_network.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_opengl.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_platformsupport.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_printsupport.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_qml.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_qmldevtools.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_qmltest.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_qtmultimediaquicktools.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_quick.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_quickparticles.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_script.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_scripttools.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_sql.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_svg.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_testlib.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_uitools.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_v8.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_webkit.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_webkitwidgets.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_widgets.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_xml.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\modules\qt_lib_xmlpatterns.pri:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\qt_functions.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\qt_config.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\win32-g++\qmake.conf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\spec_post.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\exclusive_builds.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\default_pre.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\win32\default_pre.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\resolve_config.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\default_post.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\win32\console.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\qml_debug.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\declarative_debug.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\win32\rtti.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\warn_on.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\testcase_targets.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\exceptions.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\yacc.prf:
C:\Qt\Qt5.0.2\5.0.2\mingw47_32\mkspecs\features\lex.prf:
TestCPP11.pro:
qmake: FORCE
	@$(QMAKE) -spec win32-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile TestCPP11.pro

qmake_all: FORCE

make_first: debug-make_first release-make_first FORCE
all: debug-all release-all FORCE
clean: debug-clean release-clean FORCE
distclean: debug-distclean release-distclean FORCE
	-$(DEL_FILE) Makefile

check: first
FORCE:

$(MAKEFILE).Debug: Makefile
$(MAKEFILE).Release: Makefile
