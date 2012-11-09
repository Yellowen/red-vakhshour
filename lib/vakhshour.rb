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

require "vakhshour/version"

#:nodoc:
module Vakhshour

  class Node

    def initialize (host='localhost',
                    port=8888,
                    kwargs={
                      async: false,
                      ssl_key: nil,
                      ssl_cert: nil,
                    })
      @remote = Ramp::AmpClient.new host, port, kwargs
      
    end

    def send_event
    end
    
end




s.call_remote(Event, sender: "mew", name: "somehow", kwargs: {:as => "asdasd"})
