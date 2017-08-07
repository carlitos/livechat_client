module LiveChat
  module REST
    class Chats < ListResource
      def initialize(path, client)
        super
        #chats is different than the other resources
        @list_key = 'chats'


      end

      def get_chat_pages(page)
        @client.get "#{@path}?page=#{page}"
      end

      # Para probar si podia llegar al metodo
      def get_hello_api
        saludo = 'Hello API Livechat'
      end

      # https://api.livechatinc.com/chats?query=""
      def get_chats_by_query(query)
        @client.get "#{@path}/?query=#{query}"
      end


    end

    class Chat < InstanceResource

      # Solo manda el link por email
      def send_transcript(*args)
        @client.post "#{@path}/send_transcript", Hash[*args]
        self
      end

    end
  end
end
