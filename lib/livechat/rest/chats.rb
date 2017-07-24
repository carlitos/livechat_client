module LiveChat
  module REST
    class Chats < ListResource
      def initialize(path, client)
        super
        #chats is different than the other resources
        @list_key = 'chats'
      end
    end

    class Chat < InstanceResource

      def get_hello_api
        puts "Hello API Livechat"
      end
      
      def send_transcript(*args)
        @client.post "#{@path}/send_transcript", Hash[*args]
        self
      end
    end
  end
end
