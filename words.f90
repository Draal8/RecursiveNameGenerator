function words() result(inode)
        integer         :: inode  ! output
        integer         :: nb_words

        open (10, IOSTAT = inode, FILE = 'words.data', STATUS = 'new')
        ! If the file didn't open

        if (inode == 0) then
                return
        end if
        close(10, IOSTAT = inode)

end function

program main
implicit none
        
        integer         :: words, err
        err = words()   ! ça n'a aucun sens pourquoi ça fonctionne
        !quand je fais ça mais pas quand je le met dans le print ??
        
        print *,'Return of the function :', err
end program
