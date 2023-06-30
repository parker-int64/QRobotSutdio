#ifndef UTILS_H
#define UTILS_H

#include <QObject>
#include <QQmlEngine>

class Utils : public QObject
{
    Q_OBJECT
    QML_ELEMENT

    Q_PROPERTY(bool darkMode READ darkMode WRITE setDarkMode NOTIFY darkModeChanged)

public:
    explicit Utils(QObject *parent = nullptr);

    Q_INVOKABLE QString getAppName() const;

    Q_INVOKABLE QString getAppDescription() const;

    Q_INVOKABLE QString getAppHomePageUrl() const;

    Q_INVOKABLE QString getAppVersion() const;


    Q_INVOKABLE bool darkMode() const;


signals:
    void darkModeChanged(bool darkMode);

public slots:
    void setDarkMode(bool darkMode);

private:
    bool m_darkMode;

};

#endif // UTILS_H
