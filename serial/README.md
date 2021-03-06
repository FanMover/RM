> ## 通信协议文件下载[“通信协议.ods”](./通信协议.ods)
> ## 功能说明
    + algorithmOfCRC --> CRC部分，包括8位与16位核计算及校验
    + Policy         --> 通信决策部分，用于对Detection发送过来的消息做决策
    + SerialCom      --> 串口收发
> ## 协议
| **TX2到下位机：** |           |                  |                                          |                                                                |
| ----------------- | --------- | :--------------- | ---------------------------------------- | -------------------------------------------------------------- |
| 字节              | 比特位    | 语法             | 语义                                     | 备注                                                           |
| B[0]              |           | “！”           |                                          |                                                                |
| B[1]              | b[0]-b[3] | 源地址           | 0表示消息来自云台TX2                     |                                                                |
|                   |           |                  | 1表示消息来自底盘TX2                     |                                                                |
|                   |           |                  | 2表示消息来自下位机                      |                                                                |
|                   | b[4]-b[7] | 目的地址         | 0表示消息发送给云台TX2                   | 如果目的地址不是下位机，则执行转发服务，否则下位机执行相应操作 |
|                   |           |                  | 1表示消息发送给底盘TX2                   |                                                                |
|                   |           |                  | 2表示消息发送给下位机                    |                                                                |
| B[2]              | b[0]-b[3] | 底盘运动模式     | 0表示底盘躲避模式                        |                                                                |
|                   |           |                  | 1表示底盘巡逻模式                        |                                                                |
|                   |           |                  | 2表示底盘静止模式                        |                                                                |
|                   |           |                  | 3表示底盘运动模式（接收TX2给的底盘位置） |                                                                |
|                   | b[4]-b[7] | 云台运动模式     | 0表示云台巡逻模式                        |                                                                |
|                   |           |                  | 1表示云台射击模式（不发射子弹）          |                                                                |
|                   |           |                  | 2表示云台射击模式（发射子弹）            |                                                                |
| B[3]              | b[0]-b[3] | 底盘运动目的位置 | 0-6号位置（底盘进入运动模式有效）        |                                                                |
|                   | b[4]-b[7] | 射击模式         | 一号模式                                 | 待定义                                                         |
|                   |           |                  | 二号模式                                 |                                                                |
|                   |           |                  | 三号模式                                 |                                                                |
| B[4]              |           | pitch            | pitch高位                                |                                                                |
| B[5]              |           | pitch低位        |                                          |                                                                |
| B[6]              |           | yaw              | yaw高位                                  |                                                                |
| B[7]              |           | yaw低位          |                                          |                                                                |
| B[8]              | b[0]-b[3] | 相机观测目标标识 | 0表示目标位于基地侧                      | 用于TX2之间的通信，下位机忽略此消息                            |
|                   |           |                  | 1表示目标位于外侧                        |                                                                |
|                   |           |                  | 2表示未知方位                            |                                                                |
|                   | b[4]-b[7] | 相机观测目标种类 | 0表示装甲                                |                                                                |
|                   |           |                  | 1表示没把握的装甲                        |                                                                |
|                   |           |                  | 2表示灯条                                |                                                                |
|                   |           |                  | 其他可用于表示装甲种类                   |                                                                |
| B[9]              |           | CRC校验          | 16位校验                                 |                                                                |
| B[11]             |           | CRC校验 | 16位校验 |                                                                |



| **下位机到TX2：**                        |                  |                         |                        |      |
| ---------------------------------------- | ---------------- | ----------------------- | ---------------------- | ---- |
| 字节                                     | 比特位           | 语法                    | 语义                   | 备注 |
| B[0]                                     |                  | 起始位                  | “！”                 |      |
| B[1]                                     | b[0]-b[3]        | 源地址                  | 0表示消息来自云台TX2   |      |
|                                          |                  |                         | 1表示消息来自底盘TX2   |      |
|                                          |                  |                         | 2表示消息来自下位机    |      |
|                                          | b[4]-b[7]        | 目的地址                | 0表示消息发送给云台TX2 |      |
|                    |                  |                         | 1表示消息发送给底盘TX2 |      |
|                     |                  |                         | 2表示消息发送给下位机 |      |
| B[2]                                     | b[0]-b[3]        | 底盘当前运动模式        | 0表示底盘躲避模式      |      |
|                         |                  |                         | 1表示底盘巡逻模式 |      |
|                         |                  |                         | 2表示底盘静止模式 |      |
|  |                  |                         | 3表示底盘运动模式（接收TX2给的底盘位置） |      |
|                                 | b[4]-b[7] | 云台当前运动模式 | 0表示云台巡逻模式 |      |
|           |                  |                         | 1表示云台射击模式（不发射子弹） |      |
|             |                  |                         | 2表示云台射击模式（发射子弹） |      |
| B[3]                                     | b[0]-b[3]        | 底盘当前位置            | 0-6号位置              |      |
|                                 | b[4]-b[7] | 当前射击模式 | 0表示没有进行射击 |      |
|                                  |            |                         | 一号模式 | 待定义 |
|                                  |                  |                         | 二号模式 |      |
|                                  |                  |                         | 三号模式 |      |
| B[4]                                     |                  | pitch                   | pitch高位              |      |
| B[5]                                     |         | pitch低位 |                        |      |
| B[6]                                     |                  | yaw                     | yaw高位                |      |
| B[7]                                     |           | yaw低位 |                        |      |
| B[8]                                     | b[0]-b[3]        | 剩余血量                | 划分为0-15个等级       |      |
|                                          |                  |                         |                        |      |
|                                 | b[4]-b[7] | 受打击装甲面 | 0表示基地侧装甲收到打击 |      |
|                     |                  |                         | 1表示外侧装甲受到打击 |      |
| B[9]                                     |                  | CRC校验                 | 16位校验               |      |
| B[10]                                    |                  | CRC校验 | 16位校验 |      |