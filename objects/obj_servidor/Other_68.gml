var n_id = ds_map_find_value(async_load, "id");  
if n_id == server{		
	var t = ds_map_find_value(async_load, "type");
    switch(t)
        {
	        case network_type_connect:
	            var sock = ds_map_find_value(async_load, "socket");
				show_message("Conectado")
	            ds_list_add(socketlist, sock);
	            break;
	        case network_type_disconnect:
	            var sock = ds_map_find_value(async_load, "socket");
				show_message("Desconectado")
	            ds_list_delete(socketlist, sock);
	            break;
			case network_type_data:
				show_message("Pacote")
				break;
        }
}else{
	var t = ds_map_find_value(async_load, "type");
	switch(t)
        {
			case network_type_data:
				show_message(n_id)
				break;
        }
}