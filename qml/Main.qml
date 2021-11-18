/*
 * Copyright (C) 2021  Your FullName
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * test2 is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.7
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
//import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0

MainView {
    id: root
    objectName: 'mainView'
    applicationName: 'test2.yourname'
    automaticOrientation: true

    width: units.gu(45)
    height: units.gu(75)

    Page {
        anchors.fill: parent

        header: PageHeader {
            id: header
            title: i18n.tr('Test 2')

                trailingActionBar.actions: [
                    Action {
                        text: "About"
                        iconName: "info"
                        onTriggered: {}
                    }
                ]
        }

        Label {
            id: label1
            anchors {
                top: header.bottom
                topMargin: units.gu(2)
                left: parent.left
                leftMargin: units.gu(2)
            }
            text: i18n.tr("Don't forget this:")

            verticalAlignment: Label.AlignVCenter
            horizontalAlignment: Label.AlignHCenter
        }

        TextField {
            id: textfield1

            anchors {
                top: label1.bottom
                topMargin: units.gu(1)
                left: parent.left
                leftMargin: units.gu(2)
                right: button1.left
                rightMargin: units.gu(1)
            }
        }

        Button {
            id: button1
            
            anchors {
                top: textfield1.top
                right: parent.right
                rightMargin: units.gu(2)
            }

            text: "Add"
        }

        ListView {
            id: listview1

            anchors {
                left: parent.left
                right: parent.right
                top: textfield1.bottom
                topMargin: units.gu(1)
                bottom: button2.top
                bottomMargin: units.gu(1)
            }

            clip: true

            model: 20

            delegate: ListItem {
                width: parent.width
                height: units.gu(5)

                divider.visible: false

                CheckBox {
                    id: checkbox1

                    anchors {
                        verticalCenter: parent.verticalCenter
                        left: parent.left
                        leftMargin: units.gu(2)
                    }
                }

                Label {
                    anchors {
                        verticalCenter: parent.verticalCenter
                        left: checkbox1.right
                        leftMargin: units.gu(1)
                    }
                    text: "boodschap"
                }

                // Leadingactions: destructief, is rood

                leadingActions: ListItemActions {
                    actions: [
                        Action {
                            iconName: "delete"

                            onTriggered: {

                            }
                        }
                    ]
                }

                // Trailingactions: informatief, is grijs

                trailingActions: ListItemActions {
                    actions: [
                        Action {
                            iconName: "info"

                            onTriggered: {

                            }
                        }
                    ]
                }
            }
        }

        Button {
            id: button2

            width: parent.width / 2 - units.gu(2.5)

            anchors {
                left: parent.left
                leftMargin: units.gu(2)
                bottom: parent.bottom
                bottomMargin: units.gu(2)
            }

            text: "Remove all..."
        }

        Button {
            id: button3

            width: parent.width / 2 - units.gu(2.5)

            anchors {
                right: parent.right
                rightMargin: units.gu(2)
                bottom: parent.bottom
                bottomMargin: units.gu(2)
            }

            text: "Remove selected..."
        }
    }
}
