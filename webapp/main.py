#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import re
import requests
import sys
import time

from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    time.sleep(8)
    return 'Hello World'

if __name__ == '__main__':
    app.debug = True
    app.run(host='0.0.0.0', port=80)
