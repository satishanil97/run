integer main()
{
  integer childpid, retval, i, j;

  childpid = Fork();
  childpid = Fork();
  childpid = Getpid();

  if(childpid == 1) then
    retval = Create("file1.dat");
    j = Open("file1.dat");
    i = 1;
    while(i < 101) do
      retval = Write(j,i);
      i = i + 4;
    endwhile;
    retval = Close(j);

    retval = Wait(2);
    retval = Wait(3);
    retval = Wait(4);

    retval = Exec("merger.xsm");
  endif;

  if(childpid == 2) then
    retval = Create("file2.dat");
    j = Open("file2.dat");
    i = 2;
    while(i < 101) do
      retval = Write(j,i);
      i = i + 4;
    endwhile;
    retval = Close(j);
  endif;

  if(childpid == 3) then
    retval = Create("file3.dat");
    j = Open("file3.dat");
    i = 3;
    while(i < 101) do
      retval = Write(j,i);
      i = i + 4;
    endwhile;
    retval = Close(j);
  endif;

  if(childpid == 4) then
    retval = Create("file4.dat");
    j = Open("file4.dat");
    i = 4;
    while(i < 101) do
      retval = Write(j,i);
      i = i + 4;
    endwhile;
    retval = Close(j);
  endif;

  return 0;
}
