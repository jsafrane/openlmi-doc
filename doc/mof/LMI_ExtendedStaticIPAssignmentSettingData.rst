.. _LMI-ExtendedStaticIPAssignmentSettingData:

LMI_ExtendedStaticIPAssignmentSettingData
-----------------------------------------

Class reference
===============
Subclass of :ref:`CIM_ExtendedStaticIPAssignmentSettingData <CIM-ExtendedStaticIPAssignmentSettingData>`

CIM_ExtendedStaticIPAssignmentSettingData defines a IP configuration which could be statically assigned to a Network Interface / LANEndpoint.


Key properties
^^^^^^^^^^^^^^

| :ref:`InstanceID <CIM-ManagedElement-InstanceID>`

Local properties
^^^^^^^^^^^^^^^^

.. _LMI-ExtendedStaticIPAssignmentSettingData-SubnetMasks:

``string[]`` **SubnetMasks**

    The mask for the IPv4 address.

    
.. _LMI-ExtendedStaticIPAssignmentSettingData-ProtocolIFType:

``uint16`` **ProtocolIFType**

    An enumeration that describes the IP version.

    
    ======== ======
    ValueMap Values
    ======== ======
    4096     IPv4  
    4097     IPv6  
    ======== ======
    
.. _LMI-ExtendedStaticIPAssignmentSettingData-IPv6SubnetPrefixLengths:

``uint16[]`` **IPv6SubnetPrefixLengths**

    IPv6SubnetPrefixLengths is used to identify the prefix length of the IPv6Addresses

    
.. _LMI-ExtendedStaticIPAssignmentSettingData-IPAddresses:

``string[]`` **IPAddresses**

    IP addresses to be statically assigned. Either IPv4 address array or IPv6 address array shall be represented by this property. If it is IPv6 array, then for each element, there will be a corresponding element in IPv6SubnetPrefixLengths array. If it is IPv4 array, then for each element, there will be a corresponding element in SubnetMasks array.

    
.. _LMI-ExtendedStaticIPAssignmentSettingData-GatewayAddresses:

``string[]`` **GatewayAddresses**

    IP Addresses for the Gateways

    
.. _LMI-ExtendedStaticIPAssignmentSettingData-AddressOrigin:

``uint16`` **AddressOrigin**

    AddressOrigin identifies the method by which the IP Address, Subnet Mask, and Gateway were assigned to the IPProtocolEndpoint. A value of 2 indicates that the application of the IPAssignmentSettingData instance does not affect these properties.

    
    ======== ======
    ValueMap Values
    ======== ======
    3        Static
    ======== ======
    

Local methods
^^^^^^^^^^^^^

*None*

Inherited properties
^^^^^^^^^^^^^^^^^^^^

| ``string`` :ref:`ElementName <CIM-SettingData-ElementName>`
| ``string`` :ref:`Description <CIM-ManagedElement-Description>`
| ``uint16`` :ref:`ChangeableType <CIM-SettingData-ChangeableType>`
| ``string`` :ref:`InstanceID <CIM-SettingData-InstanceID>`
| ``uint64`` :ref:`Generation <CIM-ManagedElement-Generation>`
| ``string`` :ref:`Caption <CIM-ManagedElement-Caption>`
| ``string`` :ref:`ConfigurationName <CIM-SettingData-ConfigurationName>`

Inherited methods
^^^^^^^^^^^^^^^^^

*None*

