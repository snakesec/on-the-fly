rm -rf /opt/ANDRAX/on-the-fly

python3 -m venv /opt/ANDRAX/on-the-fly

source /opt/ANDRAX/on-the-fly/bin/activate

/opt/ANDRAX/on-the-fly/bin/pip3 install -r requirements.txt
/opt/ANDRAX/on-the-fly/bin/pip3 install netfilterqueue

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Pip install requirements... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf $(pwd) /opt/ANDRAX/on-the-fly/package

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf andraxbin/* /opt/ANDRAX/bin
