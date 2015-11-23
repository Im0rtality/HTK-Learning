# HTK-Learning

    $ Rscript src/learn.r <file> <hidden-layer-neurons> <max-iterations>

# Running on Ubuntu VM

    sudo apt-get install R
    sudo sh -c 'echo "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list'
    gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
    gpg -a --export E084DAB9 | sudo apt-key add -
    sudo apt-get update
    sudo apt-get -y install r-base
    sudo fallocate -l 4G /swapfile
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    R -e "install.packages('nnet', repos = 'http://cran.rstudio.com/')"
    sudo apt-get install git
    git clone https://github.com/Im0rtality/HTK-Learning.git
    cd HTK-Learning/
    Rscript src/learn.r data/htk.csv 18 100000 && <ping some notification service>
