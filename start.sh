if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Krmovierequest/Safarifilterbot.git /Safarifilterbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Safarifilterbot
fi
cd /Safarifilterbot
pip3 install -U -r requirements.txt
echo "Starting SAFARI-FILTER-BOT...."
python3 bot.py
