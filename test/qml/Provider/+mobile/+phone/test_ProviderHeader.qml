/*
 * \copyright Copyright (c) 2018-2022 Governikus GmbH & Co. KG, Germany
 */

import QtQuick 2.15
import QtTest 1.15

import Governikus.Global 1.0

TestCase {
	id: testCase

	name: "test_ProviderHeader"
	visible: true
	when: windowShown

	readonly property var sectionPageFlickable: GFlickable {}

	function createTestObject() {
		return createTemporaryQmlObject("import Governikus.Provider 1.0; ProviderHeader {}", testCase)
	}

	function test_load() {
		let testObject = createTestObject()
		verify(testObject, "Object loaded")
	}
}
