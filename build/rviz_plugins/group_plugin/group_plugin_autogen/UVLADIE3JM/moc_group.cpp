/****************************************************************************
** Meta object code from reading C++ file 'group.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/rviz_plugins/group_plugin/src/group.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'group.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_rviz1__Group_t {
    QByteArrayData data[8];
    char stringdata0[96];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_rviz1__Group_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_rviz1__Group_t qt_meta_stringdata_rviz1__Group = {
    {
QT_MOC_LITERAL(0, 0, 12), // "rviz1::Group"
QT_MOC_LITERAL(1, 13, 8), // "setTopic"
QT_MOC_LITERAL(2, 22, 0), // ""
QT_MOC_LITERAL(3, 23, 5), // "topic"
QT_MOC_LITERAL(4, 29, 7), // "sendVel"
QT_MOC_LITERAL(5, 37, 22), // "update_Linear_Velocity"
QT_MOC_LITERAL(6, 60, 23), // "update_Angular_Velocity"
QT_MOC_LITERAL(7, 84, 11) // "updateTopic"

    },
    "rviz1::Group\0setTopic\0\0topic\0sendVel\0"
    "update_Linear_Velocity\0update_Angular_Velocity\0"
    "updateTopic"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_rviz1__Group[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   39,    2, 0x0a /* Public */,
       4,    0,   42,    2, 0x09 /* Protected */,
       5,    0,   43,    2, 0x09 /* Protected */,
       6,    0,   44,    2, 0x09 /* Protected */,
       7,    0,   45,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void rviz1::Group::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Group *_t = static_cast<Group *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->setTopic((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->sendVel(); break;
        case 2: _t->update_Linear_Velocity(); break;
        case 3: _t->update_Angular_Velocity(); break;
        case 4: _t->updateTopic(); break;
        default: ;
        }
    }
}

const QMetaObject rviz1::Group::staticMetaObject = {
    { &rviz::Panel::staticMetaObject, qt_meta_stringdata_rviz1__Group.data,
      qt_meta_data_rviz1__Group,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *rviz1::Group::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *rviz1::Group::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_rviz1__Group.stringdata0))
        return static_cast<void*>(this);
    return rviz::Panel::qt_metacast(_clname);
}

int rviz1::Group::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
