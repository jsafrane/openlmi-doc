# Copyright (C) 2013-2014 Michal Minar <miminar@redhat.com>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, see <http://www.gnu.org/licenses/>.
"""
Contains command classes producing key-value pairs to output.
"""
import abc

from lmi.scripts.common import formatter
from lmi.scripts.common import get_logger
from lmi.scripts.common.command import meta
from lmi.scripts.common.command.session import LmiSessionCommand

LOG = get_logger(__name__)

class LmiShowInstance(LmiSessionCommand):
    """
    End point command producing a list of properties of particular CIM
    instance. Either reduced list of properties to print can be specified, or
    the associated function alone can decide, which properties shall be
    printed. Associated function is expected to return CIM instance as a
    result.

    List of additional recognized properties:

        ``DYNAMIC_PROPERTIES`` : ``bool``
            A boolean saying, whether the associated function alone shall
            specify the list of properties of rendered instance. If ``True``,
            the result of function must be a pair: ::

                (props, inst)

            Where props is the same value as can be passed to ``PROPERTIES``
            property. Defaults to ``False``.
        ``PROPERTIES`` : ``tuple``
            May contain list of instance properties, that will be produced in
            the same order as output. Each item of list can be either:

                name : ``str``
                    Name of property to render.
                pair : ``tuple``
                    A tuple ``(Name, render_func)``, where former item an
                    arbitraty name for rendered value and the latter is a
                    function taking as the only argument particular instance
                    and returning value to render.

    ``DYNAMIC_PROPERTIES`` and ``PROPERTIES`` are mutually exclusive. If none
    is given, all instance properties will be printed.

    Using metaclass: :py:class:`~.meta.ShowInstanceMetaClass`.
    """
    __metaclass__ = meta.ShowInstanceMetaClass

    def formatter_factory(self):
        return formatter.SingleFormatter

    @abc.abstractmethod
    def render(self, result):
        """
        This method can either be overriden in a subclass or left alone. In the
        latter case it will be generated by
        :py:class:`~.meta.ShowInstanceMetaClass` metaclass with regard to
        ``PROPERTIES`` and ``DYNAMIC_PROPERTIES``.

        :param result: Either an instance to
            render or pair of properties and instance.
        :type: :py:class:`lmi.shell.LMIInstance` or ``tuple``
        :returns: List of pairs, where the first item is a label and second a
            value to render.
        :rtype: list
        """
        raise NotImplementedError(
                "render method must be overriden in subclass")

    def take_action(self, connection, args, kwargs):
        """
        Process single connection to a host, render result and return a value
        to render.

        :returns: List of pairs, where the first item is a label and
            second a value to render.
        :rtype: list
        """
        res = self.execute_on_connection(connection, *args, **kwargs)
        return self.render(res)

