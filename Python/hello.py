# hello.py
# -*- coding: utf-8 -*-
import os

L1 = ['Hello', 'World', 18, 'Apple', None]
L2 = [str2.lower() for str2 in [str1 for str1 in L1 if isinstance(str1, str)]]

print(L2)