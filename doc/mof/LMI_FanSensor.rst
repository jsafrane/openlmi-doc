.. _LMI-FanSensor:

LMI_FanSensor
-------------

Class reference
===============
Subclass of :ref:`CIM_NumericSensor <CIM-NumericSensor>`

A Numeric Sensor is capable of returning numeric readings and optionally supports thresholds settings.


Key properties
^^^^^^^^^^^^^^

| :ref:`DeviceID <LMI-FanSensor-DeviceID>`
| :ref:`SystemName <CIM-LogicalDevice-SystemName>`
| :ref:`DeviceID <CIM-LogicalDevice-DeviceID>`
| :ref:`CreationClassName <CIM-LogicalDevice-CreationClassName>`
| :ref:`SystemCreationClassName <CIM-LogicalDevice-SystemCreationClassName>`

Local properties
^^^^^^^^^^^^^^^^

.. _LMI-FanSensor-Name:

``string`` **Name**

    Name of fan provided by system.

    
.. _LMI-FanSensor-DeviceID:

``string`` **DeviceID**

    Uniquely identifies fan. It is a composition of SysPath and Name glued with slash ('/').

    

Local methods
^^^^^^^^^^^^^

*None*

Inherited properties
^^^^^^^^^^^^^^^^^^^^

| ``uint16`` :ref:`PrimaryStatus <CIM-ManagedSystemElement-PrimaryStatus>`
| ``uint16[]`` :ref:`SupportedThresholds <CIM-NumericSensor-SupportedThresholds>`
| ``uint16`` :ref:`HealthState <CIM-ManagedSystemElement-HealthState>`
| ``sint32`` :ref:`LowerThresholdCritical <CIM-NumericSensor-LowerThresholdCritical>`
| ``uint16[]`` :ref:`EnabledThresholds <CIM-NumericSensor-EnabledThresholds>`
| ``uint16`` :ref:`ValueFormulation <CIM-NumericSensor-ValueFormulation>`
| ``boolean`` :ref:`PowerManagementSupported <CIM-LogicalDevice-PowerManagementSupported>`
| ``sint32`` :ref:`UnitModifier <CIM-NumericSensor-UnitModifier>`
| ``string`` :ref:`CreationClassName <CIM-LogicalDevice-CreationClassName>`
| ``uint16`` :ref:`SensorType <CIM-Sensor-SensorType>`
| ``uint16`` :ref:`CommunicationStatus <CIM-ManagedSystemElement-CommunicationStatus>`
| ``sint32`` :ref:`MinReadable <CIM-NumericSensor-MinReadable>`
| ``string`` :ref:`SystemName <CIM-LogicalDevice-SystemName>`
| ``datetime`` :ref:`TimeOfLastStateChange <CIM-EnabledLogicalElement-TimeOfLastStateChange>`
| ``sint32`` :ref:`LowerThresholdNonCritical <CIM-NumericSensor-LowerThresholdNonCritical>`
| ``sint32`` :ref:`Tolerance <CIM-NumericSensor-Tolerance>`
| ``uint16`` :ref:`BaseUnits <CIM-NumericSensor-BaseUnits>`
| ``string`` :ref:`CurrentState <CIM-Sensor-CurrentState>`
| ``sint32`` :ref:`Accuracy <CIM-NumericSensor-Accuracy>`
| ``string`` :ref:`Status <CIM-ManagedSystemElement-Status>`
| ``string`` :ref:`ElementName <CIM-ManagedElement-ElementName>`
| ``string[]`` :ref:`StatusDescriptions <CIM-ManagedSystemElement-StatusDescriptions>`
| ``uint16[]`` :ref:`SettableThresholds <CIM-NumericSensor-SettableThresholds>`
| ``uint16`` :ref:`TransitioningToState <CIM-EnabledLogicalElement-TransitioningToState>`
| ``string[]`` :ref:`IdentifyingDescriptions <CIM-LogicalDevice-IdentifyingDescriptions>`
| ``sint32`` :ref:`CurrentReading <CIM-NumericSensor-CurrentReading>`
| ``uint64`` :ref:`Generation <CIM-ManagedElement-Generation>`
| ``boolean`` :ref:`ErrorCleared <CIM-LogicalDevice-ErrorCleared>`
| ``uint32`` :ref:`Hysteresis <CIM-NumericSensor-Hysteresis>`
| ``sint32`` :ref:`NormalMax <CIM-NumericSensor-NormalMax>`
| ``string`` :ref:`InstanceID <CIM-ManagedElement-InstanceID>`
| ``uint16[]`` :ref:`OperationalStatus <CIM-ManagedSystemElement-OperationalStatus>`
| ``sint32`` :ref:`LowerThresholdFatal <CIM-NumericSensor-LowerThresholdFatal>`
| ``string`` :ref:`OtherSensorTypeDescription <CIM-Sensor-OtherSensorTypeDescription>`
| ``string`` :ref:`AccuracyUnits <CIM-NumericSensor-AccuracyUnits>`
| ``uint16`` :ref:`LocationIndicator <CIM-LogicalDevice-LocationIndicator>`
| ``uint16`` :ref:`RateUnits <CIM-NumericSensor-RateUnits>`
| ``uint16`` :ref:`DetailedStatus <CIM-ManagedSystemElement-DetailedStatus>`
| ``string[]`` :ref:`OtherIdentifyingInfo <CIM-LogicalDevice-OtherIdentifyingInfo>`
| ``datetime`` :ref:`InstallDate <CIM-ManagedSystemElement-InstallDate>`
| ``uint16`` :ref:`EnabledDefault <CIM-EnabledLogicalElement-EnabledDefault>`
| ``uint16[]`` :ref:`AvailableRequestedStates <CIM-EnabledLogicalElement-AvailableRequestedStates>`
| ``uint16`` :ref:`EnabledState <CIM-EnabledLogicalElement-EnabledState>`
| ``uint16[]`` :ref:`AdditionalAvailability <CIM-LogicalDevice-AdditionalAvailability>`
| ``sint32`` :ref:`NormalMin <CIM-NumericSensor-NormalMin>`
| ``sint32`` :ref:`UpperThresholdNonCritical <CIM-NumericSensor-UpperThresholdNonCritical>`
| ``uint16`` :ref:`OperatingStatus <CIM-ManagedSystemElement-OperatingStatus>`
| ``sint32`` :ref:`UpperThresholdFatal <CIM-NumericSensor-UpperThresholdFatal>`
| ``uint16`` :ref:`StatusInfo <CIM-LogicalDevice-StatusInfo>`
| ``uint16[]`` :ref:`PowerManagementCapabilities <CIM-LogicalDevice-PowerManagementCapabilities>`
| ``uint64`` :ref:`PowerOnHours <CIM-LogicalDevice-PowerOnHours>`
| ``uint32`` :ref:`Resolution <CIM-NumericSensor-Resolution>`
| ``string[]`` :ref:`PossibleStates <CIM-Sensor-PossibleStates>`
| ``string`` :ref:`SensorContext <CIM-Sensor-SensorContext>`
| ``string`` :ref:`Description <CIM-ManagedElement-Description>`
| ``uint64`` :ref:`PollingInterval <CIM-Sensor-PollingInterval>`
| ``uint64`` :ref:`MaxQuiesceTime <CIM-LogicalDevice-MaxQuiesceTime>`
| ``uint64`` :ref:`TotalPowerOnHours <CIM-LogicalDevice-TotalPowerOnHours>`
| ``string`` :ref:`Caption <CIM-ManagedElement-Caption>`
| ``string`` :ref:`ErrorDescription <CIM-LogicalDevice-ErrorDescription>`
| ``uint16`` :ref:`RequestedState <CIM-EnabledLogicalElement-RequestedState>`
| ``string`` :ref:`OtherEnabledState <CIM-EnabledLogicalElement-OtherEnabledState>`
| ``boolean`` :ref:`IsLinear <CIM-NumericSensor-IsLinear>`
| ``uint32`` :ref:`LastErrorCode <CIM-LogicalDevice-LastErrorCode>`
| ``sint32`` :ref:`MaxReadable <CIM-NumericSensor-MaxReadable>`
| ``sint32`` :ref:`NominalReading <CIM-NumericSensor-NominalReading>`
| ``uint32`` :ref:`ProgrammaticAccuracy <CIM-NumericSensor-ProgrammaticAccuracy>`
| ``sint32`` :ref:`UpperThresholdCritical <CIM-NumericSensor-UpperThresholdCritical>`
| ``uint16`` :ref:`Availability <CIM-LogicalDevice-Availability>`
| ``string`` :ref:`SystemCreationClassName <CIM-LogicalDevice-SystemCreationClassName>`

Inherited methods
^^^^^^^^^^^^^^^^^

| :ref:`Reset <CIM-LogicalDevice-Reset>`
| :ref:`RequestStateChange <CIM-EnabledLogicalElement-RequestStateChange>`
| :ref:`SetPowerState <CIM-LogicalDevice-SetPowerState>`
| :ref:`QuiesceDevice <CIM-LogicalDevice-QuiesceDevice>`
| :ref:`GetNonLinearFactors <CIM-NumericSensor-GetNonLinearFactors>`
| :ref:`EnableDevice <CIM-LogicalDevice-EnableDevice>`
| :ref:`OnlineDevice <CIM-LogicalDevice-OnlineDevice>`
| :ref:`RestoreDefaultThresholds <CIM-NumericSensor-RestoreDefaultThresholds>`
| :ref:`SaveProperties <CIM-LogicalDevice-SaveProperties>`
| :ref:`RestoreProperties <CIM-LogicalDevice-RestoreProperties>`

