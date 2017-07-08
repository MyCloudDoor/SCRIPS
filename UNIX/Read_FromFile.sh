                  ##############################################################################################################################
                  #                                        ReadFromFile.sh                                                                     #
                  # Written for MyCloudDoor for the post https://github.com/MyCloudDoor/SCRIPS/blob/master/UNIX/Read_FromFile.sh               #
                  # If any bug, report us in the link below                                                                                    #
                  # Free to use/edit/distribute the code below by                                                                              #
                  # giving proper credit to MyCloudDoor.com                                                                                    #
                  #                                                                                                                            #
                  ##############################################################################################################################
#!/bin/bash
SUM='cat InputFile | wc -l'
for A in 'seq 1 $SUM' ; do
head -$A InputFile | tail -1
done
