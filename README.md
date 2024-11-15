# Project2-Containerisation

1) Clone the repo.
<br>

2) Go into the **Dockerfile**:
- If you have a Nvidia GPU = uncomment the first line and delete the second. (Will run a lot faster).
- If you dont = leave as is.
<br>

3) Run **"docker build -t project2 ."** in the directory.
<br>

4) A wandb API key is needed for the next step. To get it go [here]https://wandb.auth0.com/login?state=hKFo2SA0ZTNQVDZRczd1Zm9BbERsMGI1RVFwNC1mU0VnNl81a6FupWxvZ2luo3RpZNkgQ2d4YmhWSThsOUVLX0xHdE8wNmo1N0ZDYTNacWF1N1GjY2lk2SBWU001N1VDd1Q5d2JHU3hLdEVER1FISUtBQkhwcHpJdw&client=VSM57UCwT9wbGSxKtEDGQHIKABHppzIw&protocol=oauth2&nonce=eXZ3QUJLaTB6VDJydm5JSQ%3D%3D&redirect_uri=https://api.wandb.ai/oidc/callback&response_mode=form_post&response_type=id_token&scope=openid%20profile%20email

4) To run it use the following command:
- If you used the Nvidia method = **"docker run --rm --gpus all -v "C:/Users/{USERNAME}/{REPONAME}":/workspace -e WANDB_API_KEY={YOURAPIKEYHERE} project2-containerisation-image --help"**
- If you didn't use it = **"docker run --rm -v "C:/Users/{USERNAME}/{REPONAME}":/workspace -e WANDB_API_KEY={YOURAPIKEYHERE} project2-containerisation-image --help"**
- These will print a list of arguments you can pass in. If no arguments are given it will run with **default** values.
<br>

If the command doesnt work you can also try replacing **"C:/Users/{USERNAME}/{REPONAME}":/workspace"** with **"$(pwd):/workspace"**


<ins> Example Usage: </ins>
<br>
docker run --rm -v "C:/Users/{USERNAME}/{REPONAME}":/workspace -e WANDB_API_KEY={YOURAPIKEYHERE} project2-containerisation-image --help --learning_rate 5e-8 --eval_batch_size 16 --train_batch_size 16 --run_name localTest
