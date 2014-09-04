.. _LMI-BridgingSlaveSettingData:

LMI_BridgingSlaveSettingData
----------------------------

Class reference
===============
Subclass of :ref:`LMI_IPAssignmentSettingData <LMI-IPAssignmentSettingData>`

Slave SettingData for bridging


Key properties
^^^^^^^^^^^^^^

| :ref:`InstanceID <CIM-ManagedElement-InstanceID>`

Local properties
^^^^^^^^^^^^^^^^

.. _LMI-BridgingSlaveSettingData-PathCost:

``uint32`` **PathCost**

    The Spanning Tree Protocol (STP) port cost for destinations via this port.

    
.. _LMI-BridgingSlaveSettingData-HairpinMode:

``boolean`` **HairpinMode**

    Enables or disabled 'hairpin mode' for the port, which allows frames to be sent back out through the port the frame was received on.

    
.. _LMI-BridgingSlaveSettingData-Priority:

``uint32`` **Priority**

    The Spanning Tree Protocol (STP) priority of this bridge port.

    

Local methods
^^^^^^^^^^^^^

*None*

Inherited properties
^^^^^^^^^^^^^^^^^^^^

| ``string`` :ref:`Description <CIM-ManagedElement-Description>`
| ``uint16`` :ref:`ChangeableType <CIM-SettingData-ChangeableType>`
| ``string`` :ref:`InstanceID <CIM-SettingData-InstanceID>`
| ``uint16`` :ref:`ProtocolIFType <LMI-IPAssignmentSettingData-ProtocolIFType>`
| ``string`` :ref:`ElementName <CIM-SettingData-ElementName>`
| ``string`` :ref:`Caption <LMI-IPAssignmentSettingData-Caption>`
| ``string`` :ref:`ConfigurationName <CIM-SettingData-ConfigurationName>`
| ``uint16`` :ref:`IPv6Type <LMI-IPAssignmentSettingData-IPv6Type>`
| ``uint64`` :ref:`Generation <CIM-ManagedElement-Generation>`
| ``uint16`` :ref:`AddressOrigin <LMI-IPAssignmentSettingData-AddressOrigin>`
| ``uint16`` :ref:`IPv4Type <LMI-IPAssignmentSettingData-IPv4Type>`

Inherited methods
^^^^^^^^^^^^^^^^^

| :ref:`LMI_AddStaticIPRoute <LMI-IPAssignmentSettingData-LMI-AddStaticIPRoute>`

