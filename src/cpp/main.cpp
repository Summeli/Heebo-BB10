// Default empty project template

#include <QtGui/QApplication>
#include "gameview.h"

Q_DECL_EXPORT int main(int argc, char** argv) {
    QApplication app(argc, argv);
    
    GameView view;
#ifdef HARMATTAN
    view.showFullScreen();
#else
    view.showFullScreen();
#endif
    return app.exec();
}
