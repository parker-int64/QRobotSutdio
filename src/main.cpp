#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>
#include "config.h"
#include <QDebug>
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QQuickStyle::setStyle("Material");

    QQuickStyle::setFallbackStyle("Basic");

#if (QT_VERSION < QT_VERSION_CHECK(6,5,0))  // For Qt version less then 6.5
    const QUrl url(u"qrc:/RobotControl/qml/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);
#else // Qt 6.5 provide a new way to load qml module.
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("RobotControl", "Main");
#endif

#ifdef _DEBUG
    qDebug() << "Program Version: "
             << QString("%1.%2.%3").arg(VERSION_MAJOR)
                                   .arg(VERSION_MINOR)
                                   .arg(VERSION_PATCH)
             << Qt::endl;
#endif

    return app.exec();
}
