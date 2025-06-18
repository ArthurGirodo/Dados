var n_id = ds_map_find_value(async_load, "id");
if n_id == connection{
    var t_buffer = ds_map_find_value(async_load, "buffer"); 
    var cmd_type = buffer_read(t_buffer, buffer_u16 );
    //var inst = ds_map_find_value(socket_list, sock );
	show_message(cmd_type)
    switch (cmd_type){
        case KEY:
            //A key has been pressed so read the keypress data from the buffer
            break;
        case HEALTH:
            //The player has taken a hit so remove health from them
            break;
        //etc...
       }
}
