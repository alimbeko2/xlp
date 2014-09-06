##市场交易规则（以2014年1月XLP活动为案例）
* 专利申请
申请专利要付款的小组，发送issue给兰岚。题目（Subjects）写明组号，标签（Labels）为patent申请费，其他附加条件如“一次交付多项专利申请费用”请在issue内容中写清楚；
申请专利付费无需提交合同给 兰岚。

* 任务组转账记录查看
各Group可通过以下网址查询账目记录:http://toyhouse.ie.tsinghua.edu.cn:82/index.php；
Group No为阿拉伯数字，Password为groupnumber；eg：Group1的组号为1，初始密码为groupone；

* B2C（任务组vs技术提供商）交易程序
各任务组与技术提供商交易程序参照 C2C交易程序流程1-4，后续流程为：
5.
任务组在本地THUXLP_Market文件夹内右键 Git Bash Here；
用git checkout contract切换到交易合同模板分支；
执行git checkout -b bsn_X新建一个用于本次交易的branch（X格式为 技术名称_任务组号eg：Group1购买LOGO制作技术，X为logo_1，以此类推）；
将THUXLP_Market（bsn_X）中的“交易合同书”business_contract.md（md文件用记事本打开）填写（“卖方”处请写明技术商联系人Git用户名），commit后push到THUXLP_Market(bsn_X)，（使用命令git push origin bsn_X:bsn_X），用issue通知 兰岚查收（issue标题为自己建的“bsn_X”，标签为“contract”）；
兰岚查看任务组提交的合同并与 技术商进行确认后，会通过issue通知任务组取货，买方任务组可在合同约定的 交货时间后在自己组的bank账户中看到货款划出。
操作结束后双方使用git checkout noticeboard切换回 noticeboard分支。
注：若取货前未及时提交合同，将处以交易金额5%的罚款！

* C2C（任务组vs任务组）交易程序
商家代表或市场总监获取权限（参见流程1）
求购消息发布（参见流程2）/出售消息发布（参见流程3）
买卖双方通过issue接洽（参见流程4）
买卖双方交易进行并提交“交易合同书”（参见流程5）
卖方接收虚拟货币/买方接收商品同时提交merge request（参见流程6）

* 市场交易规则
	* 1.各团队的市场总监/商家在GitLab主页右上角搜索框中搜索THUXLP_Market项目并进入，向挑战方管理团队市场部 兰岚发送issue，标题（subject）为 交易开户，标签（labels）为business开户，以获取THUXLP_Market的developer权限， 兰岚受理后将回复issue通知 市场总监；
		* 市场总监获取权限后，将THUXLP_Market项目的Noticeboard分支clone到本地工作空间，命令为git clone git@166.111.59.15:toyhouse/thuxlp_market.git -b noticeboard然后下载交易合同模板分支git fetch origin contract:contract

	* 2.市场总监将待购商品（包括技术、人力和物品等）信息以txt形式发到布告栏。即在本地空间THUXLP_Market/BuyOrSale文件夹中新建txt文档，push到THUXLP_Market/BuyOrSale(noticeboard)；
	push命令为git push origin noticeboard:noticeboard，push前谨记add和commit；
	注：txt文件名简述需求，txt内容做详细描述（txt内容至少包括自己的issue用户名，即注册GITLAB网站时第一项填的名字），文件名格式为 [buy]XXXXX文件名为英文。
	* 3.卖方监督买方提交merge request,并交货给买方，若 买方不提交merge request，卖方将无法得到货款，【后果自负】；
	挑战方管理团队在收到双方交易合同（business_contract.md）并收到 merge request后，拨款给卖方，交易完成。
	注：Merge Request路径:GitLab主页 -> THUXLP_Market -> Merge Requests -> +New Merge Request；Merge Request填写时选择bsn_X→marser，title自拟，Assign to 兰岚，内容为“确认收货”。
