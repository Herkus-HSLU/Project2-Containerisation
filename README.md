# Project2-Containerisation

1) Clone the repo.

2) Go into the **Dockerfile**:
- If you have a Nvidia GPU = uncomment the first line and delete the second. (Will run a lot faster).
- If you dont = leave as is.

3) Run **"docker build -t project2 ."** in the directory.

4) To run it use the following command:
- If you used the Nvidia method = **"docker run --rm --gpus all -v "C:/Users/{USERNAME}/{REPONAME}":/workspace -e WANDB_API_KEY={YOURAPIKEYHERE} project2-containerisation-image --help"**
- If you didn't = **"docker run --rm -v "C:/Users/{USERNAME}/{REPONAME}":/workspace -e WANDB_API_KEY={YOURAPIKEYHERE} project2-containerisation-image --help"**
- These will print a list of arguments you can pass in. If no arguments are given it will run with **default** values.

*If the command doesnt work you can also try replacing **"C:/Users/{USERNAME}/{REPONAME}":/workspace** with **$(pwd):/workspace*


<ins> Example Usage: </ins>
docker run --rm -v "C:/Users/{USERNAME}/{REPONAME}":/workspace -e WANDB_API_KEY={YOURAPIKEYHERE} project2-containerisation-image --help --learning_rate 5e-8 --eval_batch_size 16 --train_batch_size 16 --run_name localTest
