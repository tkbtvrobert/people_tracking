/****************************************************************************
** Meta object code from reading C++ file 'danger_table.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/rviz_plugins/danger_table_plugin/src/danger_table.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'danger_table.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_danger__DangerTable_t {
    QByteArrayData data[6];
    char stringdata0[98];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_danger__DangerTable_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_danger__DangerTable_t qt_meta_stringdata_danger__DangerTable = {
    {
QT_MOC_LITERAL(0, 0, 19), // "danger::DangerTable"
QT_MOC_LITERAL(1, 20, 8), // "callback"
QT_MOC_LITERAL(2, 29, 0), // ""
QT_MOC_LITERAL(3, 30, 41), // "hdl_people_tracking::TrackArr..."
QT_MOC_LITERAL(4, 72, 15), // "human_array_msg"
QT_MOC_LITERAL(5, 88, 9) // "initTable"

    },
    "danger::DangerTable\0callback\0\0"
    "hdl_people_tracking::TrackArray::ConstPtr\0"
    "human_array_msg\0initTable"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_danger__DangerTable[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   24,    2, 0x09 /* Protected */,
       5,    0,   27,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void,

       0        // eod
};

void danger::DangerTable::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        DangerTable *_t = static_cast<DangerTable *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->callback((*reinterpret_cast< const hdl_people_tracking::TrackArray::ConstPtr(*)>(_a[1]))); break;
        case 1: _t->initTable(); break;
        default: ;
        }
    }
}

const QMetaObject danger::DangerTable::staticMetaObject = {
    { &rviz::Panel::staticMetaObject, qt_meta_stringdata_danger__DangerTable.data,
      qt_meta_data_danger__DangerTable,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *danger::DangerTable::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *danger::DangerTable::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_danger__DangerTable.stringdata0))
        return static_cast<void*>(this);
    return rviz::Panel::qt_metacast(_clname);
}

int danger::DangerTable::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 2;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
