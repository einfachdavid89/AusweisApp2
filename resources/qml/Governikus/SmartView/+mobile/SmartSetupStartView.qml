/**
 * Copyright (c) 2021-2023 Governikus GmbH & Co. KG, Germany
 */
import QtQuick
import QtQuick.Layouts
import Governikus.Global
import Governikus.Style
import Governikus.View
import Governikus.TitleBar
import Governikus.Type.PersonalizationModel
import Governikus.Type.SettingsModel

FlickableSectionPage {
	id: root

	smartEidUsed: true
	spacing: Constants.component_spacing

	//: LABEL ANDROID IOS
	title: qsTr("Smart-eID")

	navigationAction: NavigationAction {
		action: NavigationAction.Action.Back

		onClicked: pop()
	}

	TintableIcon {
		Layout.alignment: Qt.AlignHCenter
		source: "qrc:///images/identify.svg"
		sourceSize.height: Style.dimens.header_icon_size
		tintColor: Style.color.control

		PkiSwitch {
			anchors.fill: parent
			//: LABEL ANDROID IOS
			functionName: qsTr("Smart-eID setup")
		}
	}
	GPane {
		Layout.fillWidth: true

		GText {

			//: LABEL ANDROID IOS
			text: qsTr("You are about to set up a Smart-eID on your device. In order to proceed, you need you ID card, your six-digit ID card PIN and an internet connection.")
			width: parent.width
		}
		PrivacyStatement {
			smart: true
			width: parent.width
		}
	}
	GSpacer {
		Layout.fillHeight: true
	}
	GButton {
		Layout.alignment: Qt.AlignHCenter
		buttonColor: SettingsModel.useSelfauthenticationTestUri ? Style.color.text_warning : Style.color.control
		icon.source: "qrc:///images/identify.svg"

		//: LABEL ANDROID IOS
		text: qsTr("Set up Smart-eID")

		onClicked: PersonalizationModel.startWorkflow()
	}
}
