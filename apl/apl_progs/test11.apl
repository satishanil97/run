integer main() {
	integer childpid , i , retval;
  print("Parent");
	childpid = Fork();
	if(childpid == -2) then
		i = 0;
    while(i < 15) do
      print("Child");
      if(i == 5) then
        retval = Signal();
        print(retval);
      endif;
      i = i + 1;
    endwhile;
	else
		retval = Wait(childpid);
    print(retval);
    i = 0;
    while(i < 5) do
      print("Parent");
      i = i + 1;
    endwhile;
	endif;
	return 0;
}
