integer main(){

string a , b;
integer c , d , i;

print("options : ");
print("> create");
print("> delete");
print("> open");
print("> close");
print("> read");
print("> write");
print("> seek");
print("> stop");

while(1 == 1) do
  read(a);

  if(a == "stop") then
    Exit();
  endif;

  if(a == "create") then
    print("filename :");
    read(b);
    i = Create(b);

    if(i == -1) then
      print("failed");
      print(" ");
    else
      print("success");
      print(" ");
    endif;
  endif;

  if(a == "delete") then
    print("filename :");
    read(b);
    i = Delete(b);

    if(i == -1) then
      print("failed");
      print(" ");
    else
      print("success");
      print(" ");
    endif;
  endif;

  if(a == "open") then
    print("filename :");
    read(b);
    i = Open(b);

    if(i == -1) then
      print("failed");
      print(" ");
    else
      print("filedesc");
      print(i);
      print("success");
      print(" ");
    endif;
  endif;

  if(a == "close") then
    print("filedesc :");
    read(c);
    i = Close(c);

    if(i == -1) then
      print("failed");
      print(" ");
    else
      print("success");
      print(" ");
    endif;
  endif;

  if(a == "read") then
    print("filedesc :");
    read(c);
    i = Read(c,b);

    if(i == -1) then
      print("failed");
      print(" ");
    else
      print(b);
      print("success");
      print(" ");
    endif;
  endif;

  if(a == "write") then
    print("filedesc :");
    read(c);
    print("word :");
    read(b);
    i = Write(c,b);

    if(i == -1) then
      print("failed");
      print(" ");
    else
      print("success");
      print(" ");
    endif;
  endif;

  if(a == "seek") then
    print("filedesc :");
    read(c);
    print("word no :");
    read(d);
    i = Seek(c,d);

    if(i == -1) then
      print("failed");
      print(" ");
    else
      print("success");
      print(" ");
    endif;
  endif;
endwhile;

return 0;

}
