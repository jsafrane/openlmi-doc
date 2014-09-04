.. _LMI-IPRouteSettingData:

LMI_IPRouteSettingData
----------------------

Class reference
===============
Subclass of :ref:`LMI_IPAssignmentSettingData <LMI-IPAssignmentSettingData>`

This SettingData instance is the aggregation point identifying an IP configuration. Multiple IP configurations could exist for a target. Each configuration is represented with an instance of IPAssignmentSettingData. The details of the IP configuration are defined by instances of sub-classes of this class (i.e. StaticIPAssignmentSettingData, DHCPSettingData, DNSSettingData). These instances are associated with the IPAssignmentSettingData instance using the OrderedComponent or ConcreteComponent associations. For example, a static IP configuration would be represented by an instance of IPAssignmentSettingData and an instance of StaticIPAssignmentSettingData associated via an instance of ConcreteComponent. A static IP configuration including DNS would be modeled using an instance of IPAssignmentSettingData, DNSSettingData, and StaticIPAssignmentSettingData. The DNSSettingData and StaticIPAssignmentSettingData instance would be associated with the IPAssignmentSettingData using instances of ConcreteComponent.


Key properties
^^^^^^^^^^^^^^

| :ref:`InstanceID <CIM-ManagedElement-InstanceID>`

Local properties
^^^^^^^^^^^^^^^^

.. _LMI-IPRouteSettingData-DestinationAddress:

``string`` **DestinationAddress**

    The address which serves as the destination to be reached.

    
.. _LMI-IPRouteSettingData-AddressType:

``uint16`` **AddressType**

    An enumeration that describes the format of the address properties.

    
    ======== =======
    ValueMap Values 
    ======== =======
    0        Unknown
    1        IPv4   
    2        IPv6   
    ======== =======
    
.. _LMI-IPRouteSettingData-DestinationMask:

``string`` **DestinationMask**

    The mask for the IPv4 destination address.

    
.. _LMI-IPRouteSettingData-RouteMetric:

``uint16`` **RouteMetric**

    RouteMetric provides a numeric indication as to the preference of this route, compared to other routes that reach the same destination.

    
.. _LMI-IPRouteSettingData-NextHop:

``string`` **NextHop**

    Address of the next-hop router

    
.. _LMI-IPRouteSettingData-PrefixLength:

``uint8`` **PrefixLength**

    The prefix length for the IPv6 destination address.

    

Local methods
^^^^^^^^^^^^^

*None*

Inherited properties
^^^^^^^^^^^^^^^^^^^^

| ``string`` :ref:`Description <CIM-ManagedElement-Description>`
| ``uint16`` :ref:`ChangeableType <CIM-SettingData-ChangeableType>`
| ``string`` :ref:`ElementName <CIM-SettingData-ElementName>`
| ``string`` :ref:`ConfigurationName <CIM-SettingData-ConfigurationName>`
| ``string`` :ref:`Caption <LMI-IPAssignmentSettingData-Caption>`
| ``string`` :ref:`InstanceID <CIM-SettingData-InstanceID>`
| ``uint16`` :ref:`IPv6Type <LMI-IPAssignmentSettingData-IPv6Type>`
| ``uint16`` :ref:`ProtocolIFType <LMI-IPAssignmentSettingData-ProtocolIFType>`
| ``uint64`` :ref:`Generation <CIM-ManagedElement-Generation>`
| ``uint16`` :ref:`AddressOrigin <LMI-IPAssignmentSettingData-AddressOrigin>`
| ``uint16`` :ref:`IPv4Type <LMI-IPAssignmentSettingData-IPv4Type>`

Inherited methods
^^^^^^^^^^^^^^^^^

| :ref:`LMI_AddStaticIPRoute <LMI-IPAssignmentSettingData-LMI-AddStaticIPRoute>`

