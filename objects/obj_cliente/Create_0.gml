// Conectar ao servidor no IP local (127.0.0.1) na porta 50000
connection = network_create_socket(network_socket_tcp);
var server = network_connect(connection, "2804:58b0:131:2b01:fc27:7745:c8b6:920b", 50000);
if(server < 0){
	show_message("Deu Ruim")
}else{
	//show_message("Deu Bom")
}

alarm[0] = room_speed * 5

enviar = function (){
	var t_buffer = buffer_create(256, buffer_grow, 1);
	buffer_seek(t_buffer, buffer_seek_start, 0);
	buffer_write(t_buffer , buffer_u16, 10);
	buffer_write(t_buffer , buffer_string,"Hello");
	//More data here...
	network_send_packet(connection, t_buffer, buffer_tell(t_buffer));
	buffer_delete(t_buffer);
}