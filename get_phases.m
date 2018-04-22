function phases = get_phases(n)
%The purpose of this function is to hold the place of an actual function
%that will get the phase data once SPACE HAUC actually 100 percent knows
%for certain that they can figure out the phases. At the moment, this code
%spits out the approprate number of phases as panels being used, n. The
%array of phases is then returned. The phases for this test will be between
%-pi/2 and pi/2.

 phases = [-pi/2; -pi/4;pi/4;pi/2];
 
end