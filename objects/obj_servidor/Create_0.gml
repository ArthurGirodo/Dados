// Iniciar o servidor na porta 50000
server = network_create_server(network_socket_tcp, 50000, 32);

socketlist = ds_list_create()

if(server < 0){
	show_message("Erro de conexão")
}

enviar = function (){
	var t_buffer = buffer_create(256, buffer_grow, 1);
	buffer_seek(t_buffer, buffer_seek_start, 0);
	buffer_write(t_buffer , buffer_u16, 10);
	buffer_write(t_buffer , buffer_string,"Hello");
	//More data here...
	for (var i = 0; i < ds_list_size(socketlist); ++i;)
	    {
	    network_send_packet(ds_list_find_value(socketlist, i), t_buffer, buffer_tell(t_buffer));
	    }
	buffer_delete(t_buffer);
}

//alarm[0] = room_speed *3