#!/usr/bin/env python2

import subprocess

def get_secret(folder, key):
    return subprocess.check_output(["kwallet-query", "-f", folder, "-r", key, "kdewallet"])[:-1]
    
if __name__ == '__main__':
    print(get_secret("Passwords", "rmahoney249_gmail"))
