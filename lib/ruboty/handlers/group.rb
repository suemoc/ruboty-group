module Ruboty
  module Handlers
    class Group < Base
      on /group\s+(.*)\s+(.*)/i, name: 'group', description: 'Return groups from member list'

      def group(message)
        group_num = message[0]
        members = message[1].split(',').shuffle!

        groups = group_num.times.map{|i| members[members.size*i/group_num ... members.size*(i+1)/group_num]}
        
        groups.each_with_index do |group, index|
          message.reply("# -- group #{index} --\n#{group.join("\n")}\n")
        end
      end
    end
  end
end
