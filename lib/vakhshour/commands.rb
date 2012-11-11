#--
#    Red Vakhshour - Ruby implementation of Vakhshour
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License along
#    with this program; if not, write to the Free Software Foundation, Inc.,
#    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#++
require 'ramp'

#:nodoc:
module Vakhshour
  
  # This module contains all the vakhshour commands. currently just *"Event"*.
  module Commands

    # *Event* class is a *AMP* protocl command.
    class Event < Ramp::Command

      command "Event"

      arguments (
                 {name: Ramp::Fields::StringField,
                   sender: Ramp::Fields::StringField,
                   kwargs: Ramp::Fields::JsonField}
                 )

      responses (
                 {status: Ramp::Fields::IntegerField}
                 )
    end

  end

end
