decl
	integer status;
enddecl
integer main()
{

	integer a;
  integer c;
	string b;

  print("Creating myfile.dat");

  status = Create("myfile.dat");
  print(status);

  print("Opening myfile.dat");
  a = Open("myfile.dat");
  print(a);

  print("Write to myfile.dat");
  status = Write(a,"write");
  print(status);

  print("Closing myfile.dat");
  a = Close(a);
  print(a);

  print("Open&Read myfile.dat");
  a = Open("myfile.dat");
  status = Read(a,b);
  print(status);
	print(b);

  print("Seek myfile.dat");
  a = Close(a);
  a = Open("myfile.dat");
  status = Seek(a,20);
	c = Write(a,"seek works");
  print(status);

	a = Close(a);
  a = Open("myfile.dat");
  status = Seek(a,20);
  c = Read(a,b);
  print(b);

  print("Delete myfile.dat");
  c = Close(a);
  status = Delete("myfile.dat");
  print(status);

	return 0;

}
