#!/usr/bin/env python
# encoding: utf-8
'''
@desc:    
@author:  
@contact: 
@file: settings.py
@time: 2020/2/28 9:22 上午
'''
# 服务器地址
from datetime import timedelta

HOST = "127.0.0.1"
USER = "root"
PASSWORD = "123456"
PORT = 3306
# DATABASE = 'day05'
DATABASE = 'blog'
SQLALCHEMY_DATABASE_URI = f"mysql+pymysql://{USER}:{PASSWORD}@{HOST}:{PORT}/{DATABASE}"
# SQLALCHEMY_DATABASE_URI = "mysql+pymysql://root:123@localhost:3306/day05"
SQLALCHEMY_TRACK_MODIFICATIONS = False
DEBUG = False
# 签名加密，session使用
SECRET_KEY = "2983oikls./f<>76546789ijk@#!@3fdcgvmn"
# session存活时间
PERMANENT_SESSION_LIFETIME = timedelta(days=3)
# session是否持久存储
PERMANENT = True