#include "utils.h"
#include "config.h"
#include <QCoreApplication>

#include <QDebug>
#include <QFile>
#include <QJsonDocument>
#include <QJsonObject>

Utils::Utils(QObject *parent)
    : QObject{parent}, m_darkMode(false)
{

}



QString Utils::getAppVersion() const {
    QString version = QString(tr("Application Version: %1.%2.%3.%4"))
                          .arg(VERSION_MAJOR)
                          .arg(VERSION_MINOR)
                          .arg(VERSION_PATCH)
                          .arg(VERSION_TWEAK);


    return version;
}


QString Utils::getAppName() const {
    return QString(tr("Application name: %1").arg(APP_NAME));
}

QString Utils::getAppDescription() const {
    return QString(tr("Application description: %1").arg(APP_DESCRIPTION));
}

QString Utils::getAppHomePageUrl() const {
    return QString(tr("Application home url: %1").arg(APP_HOMEPAGE_URL));
}


bool Utils::darkMode() const {
    return m_darkMode;
}

void Utils::setDarkMode(bool darkMode) {
    m_darkMode = darkMode;

//    if( darkMode ) {
//        QQuickStyle::setStyle();
//    }
    emit darkModeChanged(darkMode);

#ifdef _DEBUG
    qDebug() << "[Info]: Set dark mode to: " << m_darkMode << Qt::endl;
#endif

}


bool Utils::setLanguage(const QString &suffix) {
    bool writeStatus = writeJsonValue<QString>("./config/general.json" ,"language", suffix);
    return writeStatus;
}
