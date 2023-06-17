program fluorescence
! program to calculate fluorescence rate constant
  integer::i,j
  double precision::c, energy, f, tau, kf
  c=137.036
  write(*,*)"emission energy (in eV) and oscillator strenght (f)"
  read(*,*)energy,f
  energy=energy/27.2114
  tau=(c**3)/(2.0d0*f*(energy**2))
  tau=tau*2.41888432658/(10**17.0d0)
  kf=1.0d0/tau
  write(*,*)'k_F (in /s)',kf,'liftime (in ns)=', tau*(10**9)
end program fluorescence
