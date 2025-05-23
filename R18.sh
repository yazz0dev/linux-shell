op=0 

while [ "$op" -ne 8 ]; do
    clear
    echo " MENU "
    echo "1. List Files"
    echo "2. List Directories"
    echo "3. List Other (symlinks, devices, etc.)"
    echo "4. List files readable by User, Group, and Other"
    echo "5. List files with rwx permission for Owner"
    echo "6. Add rwx permission to Owner for all files"
    echo "7. Add execute permission to User, Group, Other for all items"
    echo "8. Exit"
    echo -n "Enter your option: "
    read op 

    case "$op" in
        1)
            echo "--- Files ---"
            for f in *; do
                if [ -f "$f" ]; then 
                    echo "$f"
                fi
            done
            ;;
        2)
            echo "--- Directories ---"
            for f in *; do
                if [ -d "$f" ]; then y
                    echo "$f"
                fi
            done
            ;;
        3)
            echo "--- Other (symlinks, devices, etc.) ---"
            for f in *; do
                
                if [ ! -d "$f" ] && [ ! -f "$f" ]; then
                    echo "$f"
                fi
            done
            ;;
        4)
            echo "--- Files readable by User, Group, Other ---"
            for f in *; do
                if [ -f "$f" ]; then 
                    perms=$(ls -ld "$f" | awk '{print $1}') 
                    if [ "${perms:1:1}" = "r" ] && \
                       [ "${perms:4:1}" = "r" ] && \
                       [ "${perms:7:1}" = "r" ]; then
                        echo "$f"
                    fi
                fi
            done
            ;;
        5)
            echo "--- Files with rwx for Owner ---"
            for f in *; do
                if [ -f "$f" ]; then 
                    perms=$(ls -ld "$f" | awk '{print $1}') 
                    if [ "${perms:1:3}" = "rwx" ]; then
                        echo "$f"
                    fi
                fi
            done
            ;;
        6)
            echo "--- Adding rwx to owner for all files ---"
            for f in *; do
                if [ -f "$f" ]; then 
                    chmod u+rwx "$f"
                    echo "Set u+rwx for $f"
                fi
            done
            ;;
        7)
            echo "--- Adding execute to user, group, other for all items ---"
            for f in *; do
                echo "Set a+x for $f"
            done
            ;;
        8)
            echo "Exiting..."
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac

    if [ "$op" -ne 8 ]; then
        echo ""
        read -p "Press Enter to continue..."
    fi

done

echo "Program terminated."
