echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Kanhaiya960/fwdbot Kanhaiya960/fwdbot 
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Kanhaiya960/fwdbot -b $BRANCH /fwdbot
fi
cd Kanhaiya960/fwdbot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
