echo "Input the name of the role:"
read role

echo "Creating new role: $role ..."

cd "G10-TEMPLATES"
cd "roles"

mkdir $role
cd $role

mkdir "tasks"
cd "tasks"
echo -e "# Tasks -> main.yaml\n# Role: $role\n# Create at `TZ="America/Toronto" date`\n\n" > "main.yaml"
cd ".."

mkdir "templates"
cd "templates"
echo -e "{# Templates -> config.j2 #}\n{# Role: $role #}\n{# Create at `TZ="America/Toronto" date` #}\n\n" > "config.j2"
cd ".."

mkdir "vars"
cd "vars"
echo -e "# Variables -> main.yaml\n# Role: $role\n# Create at `TZ="America/Toronto" date`\n\n" > "main.yaml"
cd ".."

cd ".."
cd "../../G10-CONFIGS"
mkdir $role
cd ".."

echo "Finished..."

