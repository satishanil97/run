integer main() {
	integer childpid, retval;
  string prog;

  while(1 == 1) do
		print(">> ");
		read(prog);
		retval = Getpid();

		if(prog == "exit") then
			Exit();
		endif;

  	childpid = Fork();

  	if(childpid == -2) then
  		retval = Exec(prog);
			if(retval == -1) then
				print("invalid input");
			endif;
			Exit();

  	else
  		retval = Wait(childpid);
  	endif;
  endwhile;

  return 0;
}
