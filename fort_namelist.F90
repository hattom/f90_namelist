#define LENGTH 5

program test_namelist
  implicit none
  real :: a, b, c
  integer :: ia, ib, ic
  logical :: la, lb, lc
  real, dimension(LENGTH) :: raa, rab
  integer, dimension(LENGTH) :: iaa

  integer :: i, status

  namelist /VARS/ a, b, c, ia, ib, ic, la, lb, lc, raa, rab, iaa

  print *, "a", a
  print *, "b", b
  print *, "c", c

  print *, "ia", ia
  print *, "ib", ib
  print *, "ic", ic

  print *, "la", la
  print *, "lb", lb
  print *, "lc", lc

  print *, "raa", (raa(i), i=1,LENGTH)
  print *, "rab", (rab(i), i=1,LENGTH)
  print *, "iaa", (iaa(i), i=1,LENGTH)

  b = 20.0
  ib = 20
  lb = .false.
  rab(:) = 200.0


  open(77, file="input")
  read(77, NML=VARS, IOSTAT=status)
  close(77)
  print *, "read input: status", status

  print *, "--" 

  print *, "a", a
  print *, "b", b
  print *, "c", c

  print *, "ia", ia
  print *, "ib", ib
  print *, "ic", ic

  print *, "la", la
  print *, "lb", lb
  print *, "lc", lc

  print *, "raa", (raa(i), i=1,LENGTH)
  print *, "rab", (rab(i), i=1,LENGTH)
  print *, "iaa", (iaa(i), i=1,LENGTH)

end program test_namelist
