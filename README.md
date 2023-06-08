<div align="center">
    <h1>QRobot Studio</h1>
</div>
<p align="center">
English | <a href="README_zh_CN.md">简体中文</a>
</p>
<div align="center"><p>A Qt Quick based robot control software, personal interest only.</p></div>


## How to use

Download the `pre-built` binaries directly from the `Release` page. Install it and launch the executable file.

The documentation is under construction.

## Build from source

If you'd like to build from source, just follow the steps below.

### Requirement

+ Qt 6 (>= 6.2 LTS is required, recommend 6.5 LTS). The essential components: core, QtQuick, QuickControls2, LinguistTools. You can use `Qt Maintenance Tool` to install them.
+ C++ Complier must support `c++17`. (MSVC 2019, GCC 9, Clang 10) 

### Build Steps

+ Clone the repo:

```Shell
git clone https://github.com/parker-int64/QRobotSutdio
```

+ Use your IDE, such as Qt Creator or CLion to open the `CMakeLists.txt` as project.

+ Build the project. Then launch it.