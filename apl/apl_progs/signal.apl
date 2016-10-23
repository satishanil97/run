integer main() {
  integer status , i;
  status = Fork();
  if(status == -2) then
    print("Child");
    i = Signal();
    print(i);
  endif;
  if(status != -2) then
    i = Wait(status);
    print("Parent");
  endif;
  return 0;
}
