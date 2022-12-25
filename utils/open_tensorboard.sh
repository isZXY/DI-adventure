#!/bin/bash
ssh -L 16007:localhost:6006 -p 8004 xyzhu@10.103.10.151 <<remotessh
    conda activate RL
    cd RL/DI-Adventure
    tensorboard --logdir mario_dqn/exp/mario_dqn_baseline_seed0_221120_073223 --bind_all --port=6006
    exit
remotessh