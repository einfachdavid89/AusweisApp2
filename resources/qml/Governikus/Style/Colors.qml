/**
 * Copyright (c) 2019-2023 Governikus GmbH & Co. KG, Germany
 */
import QtQuick

QtObject {
	readonly property color background: "#ffffff"
	readonly property color border: "#bbbbbb"
	readonly property color card_eid: "#0077b6"
	readonly property color card_reader: "#444445"
	readonly property color card_smart: "#327509"
	readonly property color control: "#0077b6"
	readonly property color control_border: "#0077b6"
	readonly property color control_border_disabled: "#bcc0c1"
	readonly property color control_border_hover: "#80cdec"
	readonly property color control_border_pressed: "#0077b6"
	readonly property color control_border_unchecked: "#576164"
	readonly property color control_content: "#ffffff"
	readonly property color control_content_disabled: "#ffffff"
	readonly property color control_content_hover: "#ffffff"
	readonly property color control_content_pressed: "#0077b6"
	readonly property color control_content_unchecked: "#576164"
	readonly property color control_disabled: "#bcc0c1"
	readonly property color control_hover: "#80cdec"
	readonly property color control_pressed: "#ffffff"
	readonly property color control_unchecked: "#ffffff"
	readonly property color fail: "#db6a00"
	readonly property color focus_indicator: "#242424"
	readonly property color mainbutton_content_pressed: "#ffffff"
	readonly property color pane: "#ffffff"
	readonly property color pane_active: "#0077b6"
	readonly property color pane_border: software_renderer ? border : transparent
	readonly property color pane_sublevel: "#f2f3f4"
	readonly property color pane_title: "#f2f3f4"
	property bool software_renderer: false
	readonly property color success: "#3e8401"
	readonly property color text: "#576164"
	readonly property color text_disabled: "#bcc0c1"
	readonly property color text_headline: "#576164"
	readonly property color text_navigation: "#ffffff"
	readonly property color text_navigation_unchecked: "#576164"
	readonly property color text_pressed: "#ffffff"
	readonly property color text_subline: "#0077b6"
	readonly property color text_subline_disabled: "#80cdec"
	readonly property color text_subline_pressed: "#ffffff"
	readonly property color text_title: "#004b76"
	readonly property color text_warning: "#eb0000"
	readonly property color transparent: "transparent"
}
