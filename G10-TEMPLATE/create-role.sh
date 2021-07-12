echo "Input the name of the role:"
read role

echo "Creating new role: $role ..."

cd "roles"

mkdir $role
cd $role

mkdir "tasks"
cd "tasks"
touch "main.yaml"
cd ".."

mkdir "templates"
cd "templates"
touch "router.j2"
cd ".."

mkdir "vars"
cd "vars"
touch "main.yaml"

cd "../../G10-CONFIGS"
mkdir $role
cd ".."

echo "Finished..."

