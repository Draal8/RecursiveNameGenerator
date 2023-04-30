program main
implicit none
        
        integer (kind = 4)     :: len_in, max_len
        character(len = 65536) :: input
        max_len = 65535

        print *,'Welcome to the Recursive Name Generator\n'
        print *,'Please enter your keywords separated by a ";" (there is a limit of 65536 characters) :'
        
        read *,input
        len_in = max_len
        do while (len_in > 1 .and. input(len_in:len_in) == ' ')
                len_in = len_in - 1
        end do
        

        print "(6I6)", len_in
        print "(1x,a1)", input(len_in:len_in)


end program main
