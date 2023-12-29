init() {
    if ( GetDvar( #"zombiemode" ) == "1" )
        level thread onplayerconnect();
}

onplayerconnect()
{
    for (;;)
	{
        level waittill( "connected", player ); 
	    player thread onplayerspawned();
	}
}

onplayerspawned()
{
    self endon( "disconnect" );
	self waittill( "spawned_player" );

   
    setPoints(1337);
    
}

setPoints(points) {
    self.score = points;
}
