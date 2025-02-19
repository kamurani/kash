#### ZSH

```zsh
# Find aliases
zsh -ixc : -o sourcetrace 2>&1 | grep -w alias

# Show all sourced files
zsh -i -o sourcetrace -c :
```

#### Apptainer 

```zsh
apptainer completion zsh >> ~/.oh-my-zsh/completions/_apptainer
```

#### Docker 

```bash

# From within container
echo $HOSTNAME # find hash name of current container

# From outside container
docker start  `docker ps -q -l` # restart it in the background
docker attach `docker ps -q -l` # reattach the terminal & stdin 

docker run --gpus all <IMAGE_NAME> nvidia-smi
# check that GPUs are visible within container


docker ps -aq --filter ancestor=<IMAGE_NAME>
# q quiet (only UUID output)
# a all (show non-running containers)
# filter for all from a particular image 

# can define container names using --name for later reference

```

#### Useful commands 

##### Resource monitoring
```bash
# refresh every 0.1 seconds 
watch -n0.1 nvidia-smi

htop
atop
nvtop # NVIDIA devices
```


##### Screen 

```bash
# To list all of the screen sessions for a user, run the following command as that user:
screen -ls

# To see all screen sessions on a specific machine you can do:
ls -laR /var/run/screen/

```

`screen -x [screen id]` - Connect / Attach to a specific running screen.

`Ctrl + D` - while in a screen to Terminate / Stop a screen from running.

`Ctrl + A, Then press D` - while in a screen to detach from screen without disturbing it.

`killall screen` - Detach or terminate all screens.
```bash

# will go to the end and continually load the latest contents of the file.
# i.e. used to monitor tail of file as it grows. 
less +F filename

# run command initially `+` and go to bottom of page `G`
less +G filename
```


#### Shell aliases

```
. ~/.zsh_aliases 


# alternatively 
for config (~/.zsh/*.zsh) source $config

```

#### Fixes 
```bash
# `conda` not recognised in zsh
source /opt/anaconda3/bin/activate
```


### Migration 

```bash
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install conda
wget https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh

# run install script...
# TODO

# add to path
source /path/to/anaconda3/bin/activate
# if installed for all users: source /opt/anaconda3/bin/activate

conda init zsh

# for bash: conda init

# check working
conda list

# 
```
