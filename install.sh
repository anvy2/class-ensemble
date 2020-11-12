echo "Make sure to install python 3.8+ before proceeding with this script"
echo "Enter full path for the python environment: "
read location
echo "Entered path is `$location`"
python -m venv $location
env_name=`basename $location`
echo "Activating environment"
source $env_name/bin/activate
echo "Upgrading Pip"
pip install --upgrade pip
echo "Installing modules and its dependencies"
pip install -r requirements.txt
echo "Deactivating environment"
deactivate
echo "Done"


