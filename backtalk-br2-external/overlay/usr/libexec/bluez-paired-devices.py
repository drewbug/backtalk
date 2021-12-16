#!/usr/bin/python

import dbus
import json

objects = dbus.SystemBus().get_object("org.bluez", "/").GetManagedObjects(dbus_interface="org.freedesktop.DBus.ObjectManager")

devices = []

for device in objects:
    if not "org.bluez.Device1" in objects[device]:
        continue

    if not objects[device]["org.bluez.Device1"]["Paired"]:
        continue

    adapter = objects[device]["org.bluez.Device1"]["Adapter"]

    adapter_id = adapter[11:]
    adapter_address = objects[adapter]["org.bluez.Adapter1"]["Address"]

    device_address = objects[device]["org.bluez.Device1"]["Address"]

    devices.append({'adapter': {'id': adapter_id, 'address': adapter_address}, 'address': device_address})

print(json.dumps(devices))

