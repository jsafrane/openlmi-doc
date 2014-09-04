.. _LMI-Fan:

LMI_Fan
-------

Class reference
===============
Subclass of :ref:`CIM_Fan <CIM-Fan>`

Capabilities and management of a Fan CoolingDevice.


Key properties
^^^^^^^^^^^^^^

| :ref:`DeviceID <LMI-Fan-DeviceID>`
| :ref:`SystemName <CIM-LogicalDevice-SystemName>`
| :ref:`DeviceID <CIM-LogicalDevice-DeviceID>`
| :ref:`CreationClassName <CIM-LogicalDevice-CreationClassName>`
| :ref:`SystemCreationClassName <CIM-LogicalDevice-SystemCreationClassName>`

Local properties
^^^^^^^^^^^^^^^^

.. _LMI-Fan-MaxSpeed:

``uint64`` **MaxSpeed**

    Maximum speed value.

    
.. _LMI-Fan-Beep:

``boolean`` **Beep**

    This indicates, whether a PC's speaker should beep when an alarm occurs.

    
.. _LMI-Fan-Name:

``string`` **Name**

    Name of fan provided by system.

    
.. _LMI-Fan-MinSpeed:

``uint64`` **MinSpeed**

    Minimum speed value.

    
.. _LMI-Fan-MaxAlarm:

``boolean`` **MaxAlarm**

    ALARM warning indicating, that current speed is above the critical level. This information is supplied by fan's chip driver.

    
.. _LMI-Fan-Divisor:

``uint32`` **Divisor**

    Fan divisisor. It affects Minimum and Maximum speed value and accuracy of readings. The drivers account for the 'fan divisor' in their calculation of RPM. So changing the fan divisor will NOT change the nominal RPM reading, it will only affect the minimum and maximum readings and the accuracy of the readings. The actual formula is RPM = (60 * 22500) / (count * divisor)

    
.. _LMI-Fan-Alarm:

``boolean`` **Alarm**

    ALARM warning indicating, that current speed is out of range. This information is supplied by fan's chip driver.

    
.. _LMI-Fan-AccessibleFeatures:

``uint16[]`` **AccessibleFeatures**

    Array of fan features, that are exposed through system  interface. In other words: those that are readible/writable.

    
    ======== ========
    ValueMap Values  
    ======== ========
    1        MinSpeed
    2        MaxSpeed
    3        Divisor 
    4        Pulses  
    5        Beep    
    6        Alarm   
    7        MinAlarm
    8        MaxAlarm
    ======== ========
    
.. _LMI-Fan-DeviceID:

``string`` **DeviceID**

    Uniquely identifies fan. It is a composition of SysPath and Name glued with slash ('/').

    
.. _LMI-Fan-MinAlarm:

``boolean`` **MinAlarm**

    ALARM warning indicating, that current speed is below the critical level. This information is supplied by fan's chip driver.

    
.. _LMI-Fan-Pulses:

``uint32`` **Pulses**

    Number of tachometer pulses per fan revolution. Integer value, typically between 1 and 4. This value is a characteristic of the fan connected to the device's input, so it has to be set in accordance with the fan model.

    

Local methods
^^^^^^^^^^^^^

*None*

Inherited properties
^^^^^^^^^^^^^^^^^^^^

| ``uint16`` :ref:`RequestedState <CIM-EnabledLogicalElement-RequestedState>`
| ``uint16`` :ref:`HealthState <CIM-ManagedSystemElement-HealthState>`
| ``boolean`` :ref:`VariableSpeed <CIM-Fan-VariableSpeed>`
| ``string[]`` :ref:`StatusDescriptions <CIM-ManagedSystemElement-StatusDescriptions>`
| ``boolean`` :ref:`PowerManagementSupported <CIM-LogicalDevice-PowerManagementSupported>`
| ``uint16`` :ref:`CommunicationStatus <CIM-ManagedSystemElement-CommunicationStatus>`
| ``string`` :ref:`SystemName <CIM-LogicalDevice-SystemName>`
| ``datetime`` :ref:`TimeOfLastStateChange <CIM-EnabledLogicalElement-TimeOfLastStateChange>`
| ``string`` :ref:`Status <CIM-ManagedSystemElement-Status>`
| ``string`` :ref:`ElementName <CIM-ManagedElement-ElementName>`
| ``uint16`` :ref:`TransitioningToState <CIM-EnabledLogicalElement-TransitioningToState>`
| ``string[]`` :ref:`IdentifyingDescriptions <CIM-LogicalDevice-IdentifyingDescriptions>`
| ``uint64`` :ref:`Generation <CIM-ManagedElement-Generation>`
| ``boolean`` :ref:`ErrorCleared <CIM-LogicalDevice-ErrorCleared>`
| ``uint16`` :ref:`PrimaryStatus <CIM-ManagedSystemElement-PrimaryStatus>`
| ``string`` :ref:`InstanceID <CIM-ManagedElement-InstanceID>`
| ``uint16`` :ref:`DesiredControlMode <CIM-Fan-DesiredControlMode>`
| ``uint16[]`` :ref:`OperationalStatus <CIM-ManagedSystemElement-OperationalStatus>`
| ``uint32`` :ref:`LastErrorCode <CIM-LogicalDevice-LastErrorCode>`
| ``uint16`` :ref:`LocationIndicator <CIM-LogicalDevice-LocationIndicator>`
| ``uint16`` :ref:`DetailedStatus <CIM-ManagedSystemElement-DetailedStatus>`
| ``string[]`` :ref:`OtherIdentifyingInfo <CIM-LogicalDevice-OtherIdentifyingInfo>`
| ``datetime`` :ref:`InstallDate <CIM-ManagedSystemElement-InstallDate>`
| ``uint16`` :ref:`EnabledDefault <CIM-EnabledLogicalElement-EnabledDefault>`
| ``uint16`` :ref:`OperatingStatus <CIM-ManagedSystemElement-OperatingStatus>`
| ``uint16[]`` :ref:`AdditionalAvailability <CIM-LogicalDevice-AdditionalAvailability>`
| ``uint16[]`` :ref:`ControlModesSupported <CIM-Fan-ControlModesSupported>`
| ``uint16`` :ref:`StatusInfo <CIM-LogicalDevice-StatusInfo>`
| ``uint16[]`` :ref:`PowerManagementCapabilities <CIM-LogicalDevice-PowerManagementCapabilities>`
| ``uint16`` :ref:`EnabledState <CIM-EnabledLogicalElement-EnabledState>`
| ``uint64`` :ref:`PowerOnHours <CIM-LogicalDevice-PowerOnHours>`
| ``uint16[]`` :ref:`AvailableRequestedStates <CIM-EnabledLogicalElement-AvailableRequestedStates>`
| ``string`` :ref:`Description <CIM-ManagedElement-Description>`
| ``uint64`` :ref:`MaxQuiesceTime <CIM-LogicalDevice-MaxQuiesceTime>`
| ``uint64`` :ref:`TotalPowerOnHours <CIM-LogicalDevice-TotalPowerOnHours>`
| ``string`` :ref:`Caption <CIM-ManagedElement-Caption>`
| ``string`` :ref:`ErrorDescription <CIM-LogicalDevice-ErrorDescription>`
| ``uint64`` :ref:`DesiredSpeed <CIM-Fan-DesiredSpeed>`
| ``uint16`` :ref:`Availability <CIM-LogicalDevice-Availability>`
| ``string`` :ref:`OtherEnabledState <CIM-EnabledLogicalElement-OtherEnabledState>`
| ``string`` :ref:`SystemCreationClassName <CIM-LogicalDevice-SystemCreationClassName>`
| ``string`` :ref:`CreationClassName <CIM-LogicalDevice-CreationClassName>`
| ``uint16`` :ref:`ControlMode <CIM-Fan-ControlMode>`
| ``boolean`` :ref:`ActiveCooling <CIM-CoolingDevice-ActiveCooling>`

Inherited methods
^^^^^^^^^^^^^^^^^

| :ref:`Reset <CIM-LogicalDevice-Reset>`
| :ref:`RequestStateChange <CIM-EnabledLogicalElement-RequestStateChange>`
| :ref:`SetPowerState <CIM-LogicalDevice-SetPowerState>`
| :ref:`QuiesceDevice <CIM-LogicalDevice-QuiesceDevice>`
| :ref:`EnableDevice <CIM-LogicalDevice-EnableDevice>`
| :ref:`OnlineDevice <CIM-LogicalDevice-OnlineDevice>`
| :ref:`SetSpeed <CIM-Fan-SetSpeed>`
| :ref:`SaveProperties <CIM-LogicalDevice-SaveProperties>`
| :ref:`RestoreProperties <CIM-LogicalDevice-RestoreProperties>`

