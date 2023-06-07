#include "utils.h"
#include "config.h"

Utils::Utils(QObject *parent)
    : QObject{parent}
{

}



QString Utils::getAppVersion() const {
    QString version = QString(tr("Version: %1.%2.%3.%4"))
                          .arg(VERSION_MAJOR)
                          .arg(VERSION_MINOR)
                          .arg(VERSION_PATCH)
                          .arg(VERSION_TWEAK);


    return version;
}