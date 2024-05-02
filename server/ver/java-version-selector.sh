#!/bin/bash
#!/bin/bash

# Prompt the user to choose between Option 1 and Option 2
echo "Please choose an option:"
echo "1. Option 1"
echo "2. Option 2"
read -p "Enter your choice (1 or 2): " choice

# Check the user's choice and execute the corresponding script
case $choice in
    1)
        echo "You chose Option 1"
        # Call script1.sh for Option 1
        ./script1.sh
        ;;
    2)
        echo "You chose Option 2"
        # Call script2.sh for Option 2
        ./script2.sh
        ;;
    *)
        echo "Invalid choice. Please enter 1 or 2."
        ;;
esac

# Exit the running script
exit
