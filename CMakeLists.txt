# reference: https://doc.qt.io/QtQuickCompiler/qquickcompiler-building-with-cmake.html

cmake_minimum_required(VERSION 3.5)

project(myQtQuickProject LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt5 COMPONENTS Core Quick REQUIRED)

# find custom module
# ref: https://stackoverflow.com/questions/56347507/custom-qml-module-not-found
# Make Qt Creator aware of where the QML modules live
set (_QML_IMPORT_PATHS "")

## Add new module paths here.
list (APPEND _QML_IMPORT_PATHS ${CMAKE_CURRENT_SOURCE_DIR}/MyQmlModule/imports)
set(QML_IMPORT_PATH "${_QML_IMPORT_PATHS}")

# compling qt5 Quick stuff
find_package(Qt5QuickCompiler)
qtquick_compiler_add_resources(RESOURCES MyQmlModule/qml.qrc)


message("$RESOURCES " ${RESOURCES})
message("$SRC_LIST " ${SRC_LIST})

add_executable(myQtQuickProject
  main.cpp
  ${RESOURCES}
)

target_compile_definitions(myQtQuickProject
  PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(myQtQuickProject
  PRIVATE Qt5::Core Qt5::Quick Qt5::Qml)
