import subprocess

result = subprocess.run(['ping', '-c', '3', '8.8.8.8'])
if result.returncode == 0:
    print('Ping successful')
else:
    print('Ping failed')
