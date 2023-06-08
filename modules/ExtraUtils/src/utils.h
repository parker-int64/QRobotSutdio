#ifndef UTILS_H
#define UTILS_H

#include <QObject>
#include <QQmlEngine>

class Utils : public QObject
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit Utils(QObject *parent = nullptr);

    Q_INVOKABLE QString getAppName() const;

    Q_INVOKABLE QString getAppDescription() const;

    Q_INVOKABLE QString getAppHomePageUrl() const;

    Q_INVOKABLE QString getAppVersion() const;

signals:

};

#endif // UTILS_H
