# Rancher Docker Image for 0.6.14
As of December 2021, this image is updated with all the links.

Make sure that you have the following environment variables set in your computer:
* RANCHER_URL
* RANCHER_ACCESS_KEY
* RANCHER_SECRET_KEY

You need to get these by logging in to Rancher.

Once done, add the following entry in your ~/.bash_profile:
```bash
alias rancher='docker run -ti -v /some/folder/in/your/computer:/root/.rancher -e RANCHER_URL=$RANCHER_URL -e RANCHER_ACCESS_KEY=$RANCHER_ACCESS_KEY -e RANCHER_SECRET_KEY=$RANCHER_SECRET_KEY rancher_local'
```

Replace `/some/folder/in/your/computer` with a folder in your computer.

If all goes well, the first command must be the following:
```bash
rancher config
```

It will ask you for the environments, etc. and it will be saved in the volume folder.

After that you can run all the usual commands as it is, like:
```bash
rancher ps
rancher logs -f container-name
```

etc.