# Ubuntu 18 External Monitor Problems (P50)

## One method

Following [this](https://forums.lenovo.com/t5/Linux-Discussion/External-Display-issue-with-P50-on-Linux/td-p/2263113) link's instructions as to how to get bumblebee...

First steps, taken from [here](http://www.webupd8.org/2012/11/primus-better-performance-and-less.html), have you install  run

```bash
sudo add-apt-repository ppa:bumblebee/stable
```

Didn't do anything else.

## Second method

Following [this](https://askubuntu.com/questions/355617/need-correct-method-to-install-nvidia-driver-on-thinkpad-running-ubuntu-12-04) post, running

```bash
sudo apt-get install nvidia-[TAB]
```

Didn't end up installing anything. Just switched to the NVIDIA drivers, connected the monitor, and rebooted the machine.

Cheers.