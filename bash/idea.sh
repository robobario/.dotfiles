IDEA_DIR="$HOME/.IntelliJIdea2017.2"
export JAVA_HOME=/home/roby/apps/jdk
mv $IDEA_DIR $IDEA_DIR.bak
mkdir $HOME/.intellij-ramdisk
mount none $HOME/.intellij-ramdisk -t tmpfs -o size=2G
cp -R $IDEA_DIR.bak/* $HOME/.intellij-ramdisk/
ln -s $HOME/.intellij-ramdisk $IDEA_DIR
/bin/sh /home/roby/apps/idea-IU-172.3757.52/bin/idea.sh 
cp -R $HOME/.intellij-ramdisk/* $IDEA_DIR.bak/
rm -f $IDEA_DIR
mv $IDEA_DIR.bak $IDEA_DIR
umount $HOME/.intellij-ramdisk
