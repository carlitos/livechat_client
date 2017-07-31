module LiveChat
  module REST
    class Chats < ListResource
      def initialize(path, client)
        super
        #chats is different than the other resources
        @list_key = 'chats'
      end

      def get_chat_pages(pages)
        @client.get "#{@path}?page=#{pages}"
        self
      end

      def get_hello_api
        puts 'Hello API Livechat'
      end

    end

    class Chat < InstanceResource

      def send_transcript(*args)
        @client.post "#{@path}/send_transcript", Hash[*args]
        self
      end
    end
  end
end
