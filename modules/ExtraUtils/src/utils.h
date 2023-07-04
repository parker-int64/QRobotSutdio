#ifndef UTILS_H
#define UTILS_H

#include <QObject>
#include <QQmlEngine>
#include <QFile>
#include <QJsonDocument>
#include <QJsonObject>
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

    Q_INVOKABLE bool setLanguage(const QString &suffix);

//    Q_INVOKABLE bool requestRetranslate();

    Q_INVOKABLE bool darkMode() const;


// 

    /**
     * @brief: this template function write a json value to a key
     *
     * @tparam T: your value type
     * @param jsonFilePath: json file path
     * @param key: your key's name, it must be a QString
     * @param value: your key's value
     * @return true: if write successfully.
     * @return false: write failed.
     */
    template <typename T> bool writeJsonValue(const QString jsonFilePath ,const QString &key, const T &value) {
        QFile file(jsonFilePath);

        if( !file.open(QIODevice::ReadWrite) ) {
            qDebug() << "[Error] Cannot open " << "./config/general.json" << Qt::endl;
            return false;
        }

        QJsonParseError err;

        QJsonDocument jsonDoc = QJsonDocument::fromJson(file.readAll(), &err);

        if( err.error != QJsonParseError::NoError ) {
            qDebug()<<"[Error] Json file parse error" << err.errorString() << Qt::endl;
            return false;
        }

        QJsonObject obj = jsonDoc.object();

        if ( obj.contains(key) ) {
            QJsonValueRef ref = obj.find("language").value();
            ref = QJsonValue(value);
        } else {
            obj[key] = value;
        }


        jsonDoc.setObject(obj);

        file.seek(0); // sets the current position to 0
        file.write(jsonDoc.toJson());


        file.flush();
        file.close();

        return true;
    }


signals:
    void darkModeChanged(bool darkMode);

public slots:
    void setDarkMode(bool darkMode);

private:
    bool m_darkMode;

};

#endif // UTILS_H
