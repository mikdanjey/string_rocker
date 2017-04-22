require "string_rocker/version"

module StringRocker
    
  module InstanceMethods
    def rock_title options = {}
      StringRocker.rock_title(self, options)
    end
  end
  
  def self.rock_title dirty_string, options = {}
    dirty_string.to_s.split(/([ ~`'@#$%^&*()_+=,.?{}<>:;"-])/).map(&:capitalize).join
  end
  
end

String.send :include, StringRocker::InstanceMethods