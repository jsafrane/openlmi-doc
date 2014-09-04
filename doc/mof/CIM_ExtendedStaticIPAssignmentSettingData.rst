.. _CIM-ExtendedStaticIPAssignmentSettingData:

CIM_ExtendedStaticIPAssignmentSettingData
-----------------------------------------

Class reference
===============
Subclass of :ref:`CIM_IPAssignmentSettingData <CIM-IPAssignmentSettingData>`

CIM_ExtendedStaticIPAssignmentSettingData defines a IP configuration which could be statically assigned to a Network Interface / LANEndpoint.


Key properties
^^^^^^^^^^^^^^

| :ref:`InstanceID <CIM-ManagedElement-InstanceID>`

Local properties
^^^^^^^^^^^^^^^^

.. _CIM-ExtendedStaticIPAssignmentSettingData-SubnetMasks:

``string[]`` **SubnetMasks**

    The mask for the IPv4 address.

    
.. _CIM-ExtendedStaticIPAssignmentSettingData-IPv6SubnetPrefixLengths:

``uint16[]`` **IPv6SubnetPrefixLengths**

    IPv6SubnetPrefixLengths is used to identify the prefix length of the IPv6Addresses

    
.. _CIM-ExtendedStaticIPAssignmentSettingData-IPAddresses:

``string[]`` **IPAddresses**

    IP addresses to be statically assigned. Either IPv4 address array or IPv6 address array shall be represented by this property. If it is IPv6 array, then for each element, there will be a corresponding element in IPv6SubnetPrefixLengths array. If it is IPv4 array, then for each element, there will be a corresponding element in SubnetMasks array.

    
.. _CIM-ExtendedStaticIPAssignmentSettingData-GatewayAddresses:

``string[]`` **GatewayAddresses**

    IP Addresses for the Gateways

    

Local methods
^^^^^^^^^^^^^

*None*

Inherited properties
^^^^^^^^^^^^^^^^^^^^

| ``string`` :ref:`ElementName <CIM-SettingData-ElementName>`
| ``string`` :ref:`Description <CIM-ManagedElement-Description>`
| ``uint16`` :ref:`ChangeableType <CIM-SettingData-ChangeableType>`
| ``uint16`` :ref:`ProtocolIFType <CIM-IPAssignmentSettingData-ProtocolIFType>`
| ``string`` :ref:`InstanceID <CIM-SettingData-InstanceID>`
| ``uint64`` :ref:`Generation <CIM-ManagedElement-Generation>`
| ``string`` :ref:`Caption <CIM-ManagedElement-Caption>`
| ``string`` :ref:`ConfigurationName <CIM-SettingData-ConfigurationName>`
| ``uint16`` :ref:`AddressOrigin <CIM-IPAssignmentSettingData-AddressOrigin>`

Inherited methods
^^^^^^^^^^^^^^^^^

*None*

