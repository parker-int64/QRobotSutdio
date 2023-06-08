#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml/qqmlextensionplugin.h>
#include <QQuickStyle>
#include <QTranslator>
#include "config.h"
#include <QDebug>

Q_IMPORT_QML_PLUGIN(ExtraUtilsPlugin)


// Generic Appication information
void setApplicationInfo() {

    const QString appName = QString(APP_NAME);
    const QString appVer  = QString("%1.%2.%3.%4")
                               .arg(VERSION_MAJOR)
                               .arg(VERSION_MINOR)
                               .arg(VERSION_PATCH)
                               .arg(VERSION_TWEAK);
    const QString orgName = QString(QObject::tr("ParkerInt64"));  // me of course..
    const QString orgDomain = QString(APP_HOMEPAGE_URL);

    QGuiApplication::setApplicationVersion(appVer);
    QGuiApplication::setOrganizationName(orgName);
    QGuiApplication::setOrganizationDomain(orgDomain);
    QGuiApplication::setApplicationName(appName);  // Fallback 1, Fallback 2 is the target name in `add_executable`


#ifdef _DEBUG
    qDebug() << "\n\n" << appName.toUtf8().data() << "\n"
             << QObject::tr("Version: \t").toUtf8().data() << appVer.toUtf8().data() << "\n"
             << QObject::tr("Author: \t").toUtf8().data() << orgName.toUtf8().data() << "\n"
             << QObject::tr("Project url: \t").toUtf8().data() << orgDomain.toUtf8().data();

    qDebug() << Qt::endl;
#endif

}


int main(int argc, char *argv[])
{
    setApplicationInfo();

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



    return app.exec();
}
