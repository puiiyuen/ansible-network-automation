echo "Input the name of the role:"
read role

echo "Creating new role: $role ..."

cd playbooks
cd roles

mkdir $role
cd $role

mkdir tasks
cd tasks
echo -e "# --------------------------------------\n# Tasks -> main.yaml\n# Role: $role\n# Create at `TZ="America/Toronto" date`\n# --------------------------------------\n\n---" > "main.yaml"
cd ..

mkdir templates
cd templates
echo -e "{# -------------------------------------- #}\n{# Templates -> config.j2 #}\n{# Role: $role #}\n{# Create at `TZ="America/Toronto" date` #}\n{# -------------------------------------- #}\n" > "config.j2"
cd ..

mkdir vars
cd vars
echo -e "# --------------------------------------\n# Variables -> main.yaml\n# Role: $role\n# Create at `TZ="America/Toronto" date`\n# --------------------------------------\n\n---" > "main.yaml"
cd ..

cd ..
cd ../../outputs
mkdir $role
cd ..

echo Finished...

