from socket import *
import rsa
# assign port and create socket with ipv4 and socket type dgram (UDP)
serverPort = 4545
serverSocket = socket(AF_INET, SOCK_DGRAM)
buffer_size = 2048
# assign port number to server socket
serverSocket.bind(('', serverPort))
print('The server is ready to receive')
# while loop allow server to receive and process from clients indefinitely, waits for a packet to arrive
while True:
    #when packet arrives at socket, packet's data is put into variable message and source address (IP and port num) in clientAddress
    message, clientAddress = serverSocket.recvfrom(buffer_size)
    # modifies packet data
    modifiedMessage = message.decode()
    print("Server received: " + message.decode())
    # serverSocket.sendto(modifiedMessage.encode(), clientAddress)