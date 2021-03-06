# see: https://stackoverflow.com/questions/63475461/unable-to-import-opengl-gl-in-python-on-macos
# Patch OpenGL loading on Apple Big Sur
try:
    import OpenGL as ogl
    try:
        import OpenGL.GL   # this fails in <=2020 versions of Python on OS X 11.x
    except ImportError:
        print('Drat, patching for Big Sur')
        from ctypes import util
        orig_util_find_library = util.find_library
        def new_util_find_library( name ):
            res = orig_util_find_library( name )
            if res: return res
            return '/System/Library/Frameworks/'+name+'.framework/'+name
        util.find_library = new_util_find_library
except ImportError:
    pass


import sys
import os
import io
import os.path
import tempfile

# required to find the right packages and resources in the extracted directory of PyInstaller
#

if getattr(sys, 'frozen', False) and hasattr(sys, '_MEIPASS'):
    os.chdir(sys._MEIPASS)


DEBUG = False

if DEBUG:
    fp = tempfile.NamedTemporaryFile(delete=False)
    print(fp.name)
    sys.stdout = io.TextIOWrapper(fp, write_through=True)
    sys.stderr = sys.stdout

from PySide2 import QtCore
from PySide2.QtWidgets import QMessageBox
from PySide2.QtCore import Qt


# don't remove resource import
import ui.resources

# required for fbs installer
import processing
import OpenGL
import OpenGL_accelerate

from PySide2.QtWidgets import QApplication

from ui.splashscreen import SplashScreen
from ui.mainwindow import MainWindow

if __name__ == "__main__":
    QtCore.QCoreApplication.setAttribute(Qt.AA_ShareOpenGLContexts)
    app = QApplication()


    splash = SplashScreen()
    splash.show()

    app.exec_()

    if DEBUG:
        QMessageBox.warning(None, app.tr("HoruCNC"),
                        app.tr(fp.name),
                        QMessageBox.Close)

    # check that the resources has been extracted. Otherwise we
    # are running direct from the "*.dmg" image -which is not supported-
    #
    if not os.access("resources/config/configuration.ini", os.W_OK|os.R_OK):
        QMessageBox.warning(None, app.tr("HoruCNC"),
                            app.tr("Running from DMG Image is not supported.\n" + \
                                   "Copy HoruCNC to your application folder"),
                            QMessageBox.Close)
    else:
        main = MainWindow()
        main.show()
        if len(sys.argv) > 1:
            main.loadPipelinePyFile(sys.argv[1])
        else:
            main.loadPipelineByIndex(0)
        print("--------------------")
        print(sys.version)
        print(QtCore.qVersion())
        print("--------------------")
        exit_code = app.exec_()
        sys.exit(exit_code)

