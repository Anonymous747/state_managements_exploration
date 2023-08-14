# For running this just add parameter after shell execution
# Example:
# sh .\scripts\create_template.sh my_template
#
#!/bin/bash

#!/bin/bash
if [ -n "$1" ]
then
    cd templates
    flutter create --template=package $1
else
    echo "No parameters found. "
fi




