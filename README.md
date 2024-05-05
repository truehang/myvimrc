# 替换当前系统的.vimrc

```bash
# 把当前目录下的.vimrc 传送到~目录下，如果~已经存在了.vimrc文件，则只传输差分部分
rsync -t .vimrc ~
```
