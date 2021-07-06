#!/usr/bin/env python2

import subprocess

def get_pass(key):
    return subprocess.check_output(["kwallet-query", "-f", "Passwords", "-r", key, "kdewallet"])[:-1]
    
if __name__ == '__main__':
    print(get_pass("rmahoney249_gmail"))
