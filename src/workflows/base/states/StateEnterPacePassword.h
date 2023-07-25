/**
 * Copyright (c) 2018-2023 Governikus GmbH & Co. KG, Germany
 */

#pragma once

#include "AbstractState.h"
#include "GenericContextContainer.h"
#include "context/WorkflowContext.h"

class test_StateEnterPacePassword;

namespace governikus
{

class StateEnterPacePassword
	: public AbstractState
	, public GenericContextContainer<WorkflowContext>
{
	Q_OBJECT
	friend class StateBuilder;
	friend class ::test_StateEnterPacePassword;

	private:
		explicit StateEnterPacePassword(const QSharedPointer<WorkflowContext>& pContext);
		void run() override;

	private Q_SLOTS:
		void onReaderStatusChanged(const ReaderManagerPlugInInfo& pInfo) const;

	public:
		void onEntry(QEvent* pEvent) override;

	Q_SIGNALS:
		void firePropagateAbort();
};

} // namespace governikus
