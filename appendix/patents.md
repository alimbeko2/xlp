##专利申请流程（以2014年1月XLP活动为案例）
* 申请人操作流程
	* 开户
		1. 各个团队的知识产权总监（以下简称总监）在GITLAB网页上找到THUXLP_IPOffice项目，向挑战方管理团队的知识产权管理员李智发送issue，标题为知识产权总监开户，标签为IP开户，内容为总监的git用户名，以获取THUXLP_IPOffice的developer权限
		2. 总监收到邮件提示获得权限后，将THUXLP_IPOffice项目的reception分支克隆到本地工作空间，使用以下命令：git clone git@166.111.59.15:toyhouse/thuxlp_ipoffice.git -b reception

	* 申请
		1. 总监执行git checkout -b Apatent，新建一个分支，其中A为本组编号。总监在data文件夹中新建一个名为groupA的文件夹，其中A为本组编号。总监根据本组需要申请的类别，到docs文件夹里将XLP_IP_OpenSourceRegistration.doc或XLP_IP_PatentApplication.docx或XLP_IP_InvalidPatentApplication.docx复制到刚刚新建的data/groupA中。
		2. 打开文件，按照模板撰写。
		3. 保存文件，在git中add、commit提交。commit的信息写明：GroupA apply for open source或GroupA apply for patent或GroupA apply for invalid patent(其中A为本组编号)。通过git push origin Apatent上传申请。
		4. 打开issue，通知管理员李智新建的branch，标题为：GroupA IP申请(其中A为本组编号)，Labels为：IP申请通过市场部按照不同上述规定缴费，不需再行按照市场规定填写合同，可直接向市场部兰岚发送issue具体说明。
		5. 等待反馈，若申请被受理，执行git pull origin Apatent。
		6. 等待处理结果，执行git checkout reception切换到模板分支。
