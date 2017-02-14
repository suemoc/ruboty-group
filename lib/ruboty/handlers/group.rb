module Ruboty
  module Handlers
    class Group < Base
      on /group\s+(?<group_num>\d+)\s+(?<members>.+)/i, name: 'group', description: 'Return groups from member list'

      def group(message)
        group_num = message[:group_num].to_i
        members = message[:members].split(',').shuffle!

        groups = group_num.times.map{|i| members[members.size*i/group_num ... members.size*(i+1)/group_num]}.reject(&:empty?)
        
        groups.each_with_index do |group, index|
          message.reply("-- group #{index + 1} --\n#{group.join("\n")}\n")
        end
      end
    end
  end
end
