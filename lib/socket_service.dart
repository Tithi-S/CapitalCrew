import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  IO.Socket socket;

  void connect(String userId, String username, String communityId) {
    socket = IO.io('http://your_flask_backend_url', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    socket.connect();
    
    socket.on('connect', (_) {
      print('connected to the server');
      socket.emit('join_community', {
        'userId': userId,
        'username': username,
        'communityId': communityId,
      });
    });

    socket.on('message', (data) {
      print('new message: $data');
    });

    socket.on('community_users', (data) {
      print('community users: $data');
    });

    socket.on('disconnect', (_) {
      print('disconnected from server');
    });
  }

  void sendMessage(String message) {
    socket.emit('chat_message', message);
  }

  void disconnect() {
    socket.disconnect();
  }
}
