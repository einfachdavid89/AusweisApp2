/*!
 * \copyright Copyright (c) 2021-2022 Governikus GmbH & Co. KG, Germany
 */


#include "StateSendStartPaosPersonalization.h"


using namespace governikus;


StateSendStartPaosPersonalization::StateSendStartPaosPersonalization(const QSharedPointer<WorkflowContext>& pContext)
	: StateGenericSendReceive(pContext,
			PaosType::TRANSMIT,
			{
				PaosType::STARTPAOS_RESPONSE
			}, true)
{
}


QSharedPointer<ResponseType> StateSendStartPaosPersonalization::getAsResponse()
{
	return QSharedPointer<ResponseType>();
}


QSharedPointer<PaosCreator> StateSendStartPaosPersonalization::getAsCreator()
{
	return getContext()->getStartPaos();
}


void StateSendStartPaosPersonalization::emitStateMachineSignal(PaosType pResponseType)
{
	if (pResponseType == PaosType::STARTPAOS_RESPONSE)
	{
		Q_EMIT fireReceivedStartPaosResponse();
	}
}
