echo "Input the name of the role:"
read role

echo "Creating new role: $role ..."

cd "G10-TEMPLATES"
cd "roles"

mkdir $role
cd $role

mkdir "tasks"
cd "tasks"
touch "main.yaml"
cd ".."

mkdir "templates"
cd "templates"
touch "config.j2"
cd ".."

mkdir "vars"
cd "vars"
touch "main.yaml"
cd ".."

cd ".."
cd "../../G10-CONFIGS"
mkdir $role
cd ".."

echo "Finished..."

