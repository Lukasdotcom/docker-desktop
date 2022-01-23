import os

password = os.getenv("VNC_PASSWD", "ubuntu")
# Runs the script while replacing the enviromental variables
with open("/script/start.sh") as f:
    script = f.read()
    script = script.replace("${VNC_PASSWD}", password)
    os.system(script)

