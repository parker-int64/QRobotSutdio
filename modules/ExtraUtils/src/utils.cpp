#include "utils.h"
#include "config.h"

Utils::Utils(QObject *parent)
    : QObject{parent}
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
