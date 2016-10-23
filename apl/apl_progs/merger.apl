integer main()
{
  integer childpid, retval, i, j, c, d;
  string a, b;

  childpid = Fork();
  childpid = Getpid();

  if(childpid == 1) then
    retval = Create("filem1.dat");
    j = Open("filem1.dat");
    c = Open("file1.dat");
    d = Open("file2.dat");

    i = 1;
    while(i < 101) do
      retval = Read(c,a);
      retval = Write(j,a);
      retval = Read(d,b);
      retval = Write(j,b);
      i = i + 4;
    endwhile;

    retval = Close(j);

    retval = Wait(2);

    retval = Create("file.dat");
    j = Open("file.dat");
    c = Open("filem1.dat");
    d = Open("filem2.dat");

    i = 1;
    while(i < 101) do
      retval = Read(c,a);
      retval = Write(j,a);
      retval = Read(c,a);
      retval = Write(j,a);
      retval = Read(d,b);
      retval = Write(j,b);
      retval = Read(d,b);
      retval = Write(j,b);
      i = i + 4;
    endwhile;

    retval = Exec("delFiles.xsm");

  else
    retval = Create("filem2.dat");
    j = Open("filem2.dat");
    c = Open("file3.dat");
    d = Open("file4.dat");

    i = 3;
    while(i < 101) do
      retval = Read(c,a);
      retval = Write(j,a);
      retval = Read(d,b);
      retval = Write(j,b);
      i = i + 4;
    endwhile;

    retval = Close(j);

  endif;

  return 0;
}
