# 使用指南

## 注册账户


<img src="https://www.jadewallet.io/images/blog7_p1.png" alt="" style="zoom:100%;" />

1. 打开Jade Wallet（只支持iOS，请在非大陆区App Store下载），点击“Sign up” *（Figure 1）*

2. 依次填入姓名（方便其他成员识别）、邮箱地址、邮件验证码、账户密码，点击“Submit”创建账户 *（Figure 2）*

3. 配置google二次验证 *（Figure 3）*

   


## 创建钱包
<img src="https://www.jadewallet.io/images/blog7_p5.png" alt="" style="zoom:100%;" />

1. 点击“Add Wallet”或右上角“+”按钮 *（Figure 4）*
2. 填入钱包名称 *（Figure 5）*
3. 选择最少签名数/成员数，这里以2签2为例。实际操作时请选择9签5：More -> 5/9。 *（Figure 5）*
4. 输入成员邮箱地址后点击“Add”将成员添加到邀请列表 *（Figure 6）*
5. 全部添加后，点击“Next” *（Figure 6）*

<img src="https://www.jadewallet.io/images/blog7_p6.png" alt="" style="zoom:100%;" />

6. 确认钱包信息，同意使用协议 *（Figure 7）*
7. 开启Face ID（或Touch ID）用于加解密密钥分片。点击“Verify Face ID”验证身份 *（Figure 8）*
8. 开启iCloud Drive用于备份加密密钥分片的Key。点击“iCloud Sync”检查系统设置是否开启 *（Figure 9）*。在移动网络模式下，请检查系统设置中“蜂窝网络” -> “iCloud云盘”。

<img src="https://www.jadewallet.io/images/blog7_p7.png" alt="" style="zoom:100%;" />

9. Face ID和iCloud Drive通过检查后，进入waiting room，须等待剩余成员同时在线。*（Figure 10）*
10. 所有成员到齐后，App将自动进入创建钱包流程，过程中需要验证Face ID。*（Figure 11）*
11. 创建结果 *（Figure 12）*。如果App提示需要备份钱包，说明有成员未完成iCloud备份，请进入钱包详情页查看未完成备份的成员信息并提示TA们再次备份。



## 转入ETH

<img src="https://nftstorage.link/ipfs/QmSXdKiPafwxDaCGjKdLXeu9Sd4CdQjoB1ZW7T523a1stn" alt="" style="zoom:100%;" />

1. 进入钱包ETH详情页点击底部“Deposit”按钮 *（Figure 13）*
2. 验证Face ID查看钱包地址 *（Figure 14）*。并通过其他钱包向该地址转入ETH。



## 配置自动签名

0. 服务器上安装Docker
1. 按下面指令在命令行运行Docker容器（第一次运行时会自动下载Docker镜像，可能耗时较长。1为编号，若需要在同一台服务器上运行多个容器，请依次增加编号）

```bash
chmod +x start-agent.sh

# goerli
./start-agent.sh 1 staging

# mainnet
./start-agent.sh 1
```
2. 依次输入账户邮箱、密码、google二次验证码登录账户

<img src="https://nftstorage.link/ipfs/QmXFdQp3pyZq62X8wWjSxsfRVaV4VjakhU6i7N8oe4JKRr" alt="" style="zoom:100%;" />   

3. 账户登录成功后，请选择自动签名的主钱包
4. 选择钱包后会提示钱包地址及余额，请确认信息是否一致

<img src="https://nftstorage.link/ipfs/QmNciQq7qJn1jzXKu9msefABE98pmNkNtgEA8iG8Ga8SWz" alt="" style="zoom:100%;" />   

5. 输入创建钱包时备份的加密密钥分片的Key。根据命令行上提示的文件路径，进入iOS上“文件夹”App或网页版iCloud，找到对应的内容并输入。

<img src="https://nftstorage.link/ipfs/QmcercibyLW63mvDLyz5fVXS8QmLBMDBGx1EptYz58ZY1S" alt="" style="zoom:100%;" />   

6. 配置ETH 2.0的合约地址，程序将会检查配置的地址和内置的地址是否一致。地址验证成功后，输出的pm2 log代表程序已配置成功。

<img src="https://nftstorage.link/ipfs/QmXjF67gne5MpfG9iXaQ9hbyDzm4F5dGhPcWqKiqiSpQ4g" alt="" style="zoom:100%;" />   


7. 按Crtl-P + Crtl-Q可将程序进入后台运行



## 创建交易

0. 安装Docker
1. 按下面指令在命令行运行Docker容器（第一次运行时会自动下载Docker镜像，可能耗时较长）

```bash
chmod +x start-batch.sh

# goerli
./start-batch.sh staging

# mainnet
./start-batch.sh
```

2. 同“配置自动签名”，依次输入账户邮箱、密码、google二次验证码登录账户，并选择发起交易的钱包

<img src="https://nftstorage.link/ipfs/QmXagca8UGTdgsPRNPB7Y6PPAaSia19mTBFETW2VyccXFJ" alt="" style="zoom:100%;" />   


3. 导入批量订单（最多20个）。根据“Enter deposit parameters in json format”提示，按回车键进入编辑器，复制粘贴订单信息。

<img src="https://nftstorage.link/ipfs/QmVXoJpLtcX1cu78CwbL2Simr2Wv84AtChXWZu9bsVkqJB" alt="" style="zoom:100%;" />   

4. 订单信息检查无误后，按esc键显示操作菜单，选择“Save&Exit”以保存订单信息。

<img src="https://nftstorage.link/ipfs/QmUcTNpz6umaanRgsbqZ3ynnFzq9J9JtF5ANYnS6HH45MS" alt="" style="zoom:100%;" />   

5. 设置Gas Price及Gas Limit。为让交易尽快上链，请务必保证Gas Price大于推荐值，比如乘以系数1.5。

<img src="https://nftstorage.link/ipfs/QmV9tKbnzm7fTSxyuePvLzEuh9Cs6ja13gYMRuKkWgdRZm" alt="" style="zoom:100%;" />  

6. 配置ETH 2.0的合约地址，程序将会检查配置的地址和内置的地址是否一致。地址验证成功后，会自动创建订单。

<img src="https://nftstorage.link/ipfs/QmYb96MH4s4BXWXjwgcAZHLUr9XJTKSX8kVd9e1TZ1ZBXc" alt="" style="zoom:100%;" />  

7. 可用未占用的账号登录Jade Wallet查看订单状态。