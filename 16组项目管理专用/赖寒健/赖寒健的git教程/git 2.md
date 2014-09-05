#SSH公钥的获取
##1.在任意空白处点击右键打开git bash.输入以下指令
###git config --global user.name "USERNAME"其中引号里面的为你的账户名
###git config --global user.email "EMAIL"其中引号里面的为你的邮箱
###ssh-keygen -t rsa -C "EMAIL"这里不做任何更改
###现在你已经成功获取SSH公钥，你需要到C盘公用文件夹里面找到ssh文件夹打开，选择pub文件，打开，全复制.
###将你复制的SSH钥匙粘贴到账户设置/SSH公钥，这样你就进入git平台
