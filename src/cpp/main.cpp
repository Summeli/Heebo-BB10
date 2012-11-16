// Default empty project template
#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>

#include <QLocale>
#include <QTranslator>
#include "gameview.h"

using namespace bb::cascades;

int main(int argc, char **argv)
{
    QApplication app(argc, argv);

    GameView view;
#ifdef HARMATTAN
    view.showFullScreen();
#else
    view.showFullScreen();
#endif
    return app.exec();
}
