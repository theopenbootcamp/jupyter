# #!/bin/bash

# # Install Homebrew if not already installed
# if ! command -v brew &> /dev/null; then
#   echo "Homebrew not found. Installing Homebrew..."
#   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# fi

# # Install wget using Homebrew
# if ! command -v wget &> /dev/null; then
#   echo "Installing wget..."
#   brew install wget
# fi

# # Install Miniconda if not already installed
# if ! command -v conda &> /dev/null; then
#   echo "Miniconda not found. Installing Miniconda..."
#   wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O ~/miniconda.sh
#   bash ~/miniconda.sh -b -p $HOME/miniconda
#   export PATH="$HOME/miniconda/bin:$PATH"
#   source ~/miniconda/bin/activate
# fi

# # Update conda and install micromamba
# conda update -n base -c defaults conda -y
# conda install -c conda-forge micromamba -y

# # Initialize micromamba shell
# micromamba shell init -s bash -p ~/micromamba
# source ~/.bash_profile

# # Create and activate the environment, then install a new version of Python
# micromamba create -n myenv python=3.10 -c conda-forge -y
# micromamba activate myenv

# # Install the dependencies
# python -m pip install -r requirements.txt

# # Build the JupyterLite site
# jupyter lite build --contents content --output-dir dist

#!/bin/bash

yum install wget

wget -qO- https://micromamba.snakepit.net/api/micromamba/linux-64/latest | tar -xvj bin/micromamba

./bin/micromamba shell init -s bash -p ~/micromamba
source ~/.bashrc

# activate the environment and install a new version of Python
micromamba activate
micromamba install python=3.10 -c conda-forge -y

# install the dependencies
python -m pip install -r requirements.txt

# build the JupyterLite site
jupyter lite --version
jupyter lite build --contents content --output-dir dist
